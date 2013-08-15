title: Ansible Empire - BEupdate way
public: no
tags: ansible
      beupdate
summary: Here I am trying to give brief summary about current BE/CO ansible structure, its advantages and disadvantages

## Code storage
You can find playbooks and roles in /acc/sys/default/ansible. As usually, the
cs-ccr-feop is a primary source of knowledge. The auxiliary playbooks are:

* /acc/sys/slc6/adm/acc-bootstrap.yml - bootstrapping playbook
* /acc/sys/slc6/adm/acc-migration2ans.yml - playbook to migrate BEupdate
  machine.
* ~pca/SYSADM/ansible-massive - massive execution of either ansible or ansible
  playbook depending on the options

## Bootstrapping process
Bootstrapping process is integrated into our current installation model.

1. PXE-boot
2. Kickstart installation
3. Kickstart puts a small piece of code inside /etc/rc.local, which executes, in
its turn, BEinstall script
4. Reboot
5. Execution of BEinstall script from /etc/rc.local
    1. Ansible installation from epel and its fast configuration
    2. ansible-playbook with /acc/sys/slc6/adm/acc-bootstrap.yml, which does:
        * configuration of automounter
        * copy acc_facts module from NFS to /usr/share/asnible and execute it
        * obtain __bootsrv__ variable and create /acc/sys symlink to
          /nfs/${bootsrv}/sys
        * copy be-ansible script to local disk in /var/lib/anisble
    3. Execute be-ansible and show the output and write to a file using tee

## be-ansible
This script is a wrapper around ansible-playbook. Its main goal is to form the
"local" ansible local role (about it later) and  execute beupdate.yml with
ansible-playbook with various options, like:

* execute it --verbose option
* redirection of stdout to the specified file 
* write log lines to remote server in case of non-zero return code of ansible
  playbook
* syncing with remote folder with/without ansible-playbook execution
* execute playbook for category in order to have tags functionality (execution
  one particular task/set of tasks from the whole playbook).

## beupdate.yml and other playbooks.

Briefly, the principle process of beupdate.yml playbook execution could be
described with the following steps:

* At first, the following fact should be noticed: several playbooks are
  statically included inside beupdate.yml. Ansible "include" has extremely
  static nature (C-like), therefore all included playbooks should exist at the
  moment of ansible-playbook execution. As the results, at the end the one big
  "virtual" playbook is executed.

* after several preparational steps, acc_facts scripts is executed as an ansible
  module. This script exports certain veriables to ansible process (also
  participation in various arrays of HOSTSsource) and among them is the __role__
  variable.

* group_by ansible module invocation with __role__ as a key. This creates the
  full-featured ansible group with the name obtained from __role__ variable.
  Each playbook: console.yml, server.yml, pvss.yml, etc - has the __hosts__
  line, which defines the groups of hosts it corresponds with. As a result, the
  with role, for example, "console" will execute the playbook with string
  "hosts: console" inside.

* each particular playbook is relatively small, it contains the fixed role set:
    
    * base - base role is used by every category of the machine
    * server - role is used by java servers (server.yml), pvss servers
      (pvss.yml), etc.
    * console - role is used by operational consoles (console.yml) and
      virtual machines for developers.
    * some other roles with obvious names
    * local - this role is used for per-host configuration and is rather special.
      It is formed dynamically in be-ansible script by copying files and folders
      with pre-defined names from __/acc/sys/pca/<hostname>/playbook__ NFS directory to
      __/var/lib/ansible/roles/local__ on the local disk. Each playbook has this
      role, even if there is not any specific per-host config, because ansible
      __roles__ do not assume code existence, only the directory structure is
      necessary.

## anisble-massive

This script is situated in ~pca/SYSADM/ansible-massive and was written for
massive invocation of ansible on various hosts. For exampe:

    ~pca/SYSADM/ansible-massive -r 'cwo-ccc-d' -u root -m shell -a 'rsync -q -a --delete --delete-excluded --exclude=.[a-zA-Z]* /acc/sys/default/ansible /var/lib/'  
\- will execute rsync on all cwo-ccc-d* machines from
  /acc/sys/Linux/hosts/hosts.masters file. Or

     ~pca/SYSADM/ansible-massive -r 'cwo-ccc-a'

\- will execute ansible ping module on the cwo-ccc-a* consoles.
The playbooks are specified with __-p__ option. Any further information could be
obtained from invocation of __ansible-massive__ without options or with __-h__
option:
    
    [mgrozak@cwo-ccc-d0lc ~]$ ~pca/SYSADM/ansible-massive -h
    Usage: /user/pca/SYSADM/ansible-massive -r <grep regexp> [ -m <module> [-a 'module arguments'] | -p <path to playbook> ] [expert options]
    
    This is a wrapper around ansible and ansible-playbook commands. Most of
    the cl options are 1:1 applicable to ansible/ansible-playbook
    
    Necessary options:
      -r - regular expression for extraction from /acc/sys/Linux/hosts/hosts.master
           If only this option is specified, 'ping' module will be called
           for all matched hosts.
    
    Ansible execution mode:
      -m - Ansible module name to execute on the remote system;
      -a - arguments for Ansible module.
    
    Ansible playbook execution options:
      -p - specify ansible playbook to execute.
    
    Expert options:
      -u - user to connect with, by default 'mgrozak';
      -f - number of ansible forks;
      -s - use sudo.
    
    Optional features:
      -l - list hosts which will participate in ansible action
           without doing anything on them.
      -h - this message
    

