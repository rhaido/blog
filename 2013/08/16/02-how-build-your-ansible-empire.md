title: How to Build Your Own Ansible Empire
public: no
tags: ansible
      devops
      system management
summary: Here I am trying to give brief summary about current BE/CO ansible structure, its advantages and disadvantages

## Code storage
You can find playbooks and roles in __/acc/sys/default/accadm/ansible__. As usually, the
*cs-ccr-feop* is a primary source of knowledge, but the GIT repository itself
lives in **accadmgit@cs-ccr-felab.cern.ch:/local/home/accadmgit/accadm.git**. The auxiliary playbooks and
scripts situated outside of this directory are:

  * __/acc/sys/slc6/adm/acc-bootstrap.yml__ - bootstrapping playbook

  * __/acc/sys/slc6/adm/acc-migration2ans.yml__ - playbook to migrate BEupdate
    machine.

  * __~pca/SYSADM/ansible-massive__ - massive execution of either *ansible* or
    *ansible-playbook* depending on the options

## Bootstrapping process

Bootstrapping process is integrated into our current installation model (step by
step):

1. PXE-boot

1. Kickstart installation

1. Kickstart puts a small piece of code inside __/etc/rc.local__ - execution of
   _BEinstall_ script.

1. Reboot

1. Execution of BEinstall script from _/etc/rc.local_

    2. Ansible installation from epel and its configuration

    2. Execution of __/acc/sys/slc6/adm/acc-bootstrap.yml__ by ansible playbook, which does:

        * configuration of automounter

        * temporary creation of _/acc/sys_ symlink to _cs-ccr-felab_

        * copy _acc_facts_ module from NFS to _/usr/share/asnible_ and execute it

        * obtain proper __bootsrv__ variable and create _/acc/sys_ symlink to
          _/nfs/${bootsrv}/sys_ firectory

        * copy be-ansible script to local disk in _/var/lib/ansible_

    2. Execute _be-ansible_, show the output and write to a file using tee in the
       same time

## be-ansible
This script is a wrapper around _ansible-playbook_ executable. Its main
functions are:

* to form the "local" ansible role (described later)

* execution of _beupdate.yml_ with _ansible-playbook_ with various options, like:

    * with _--verbose_ command line option

    * redirection of stdout to the specified file 

    * sending reports to a remote server in case of non-zero return code from
      _ansible-playbook_ execution.

    * synchronization with _/acc/sys/default/ansible_ with or without re-execution of _ansible-playbook_

    * execution of task(s) marked with certain tag

    * etc (execute with _-h_ for the help message)

## beupdate.yml and other playbooks.
The principle process of the _beupdate.yml_ execution could be briefly
described by the following steps:

* At first, the following fact should be noted: several playbooks are
  statically included inside _beupdate.yml_. Ansible __include__ statement has extremely
  static nature (C-like), therefore all included files should exist at the
  moment of __parsing__ ansible playbooks. At the end, all playbooks are
  combined in the one big "virtual" playbook, which is executed further.

* after several preparational steps, _acc_facts_ script is executed as an ansible
  module. It exports certain veriables to ansible process (also
  participation in various arrays of _HOSTSsource_) and among them is the
  __\_type__ variable, which contains the type of the machine in ACC world.

* Execution of the __group_by__ module with __\_type__ as a key. This creates the
  full-featured ansible group, which matches the certain playbook.
  Each playbook: _console.yml_, _server.yml_, _pvss.yml_, etc - has the __hosts__
  line, which defines the key, which is used for matching. As a result, the host
  with has the __\_type__ set to 'console', will execute the tasks, which has
  __hosts__ line set to 'console', i.e. the the playbook __console.yml__ in our
  case, because it has a string "hosts: console" inside.

* each particular playbook is relatively small physically and contains the inclusions of
  the roles:

    * _base_ - base role is used by every category of the machine

    * _server_ - role is used by java servers (server.yml), pvss servers
      (pvss.yml), etc.

    * _console_ - role is used by operational consoles (console.yml) and
      virtual machines for developers.

    * some other roles with the obvious names

    * _local_ - this role is used for per-host configuration and is rather specific.
      It is formed dynamically by _be-ansible_ by copying necessary files and folders
      with pre-defined names from __/acc/sys/pca/<hostname>/__ NFS directory to
      __/var/lib/ansible/roles/local__ on the local disk. Each playbook has this
      role, even if there is no any specific config, because role functionality
      of ansible does not enforce code existence, only the proper directory
      structure is necessary.

## ansible-massive
This script is situated in __~pca/SYSADM/ansible-massive__ and was written for
massive invocation of __ansible__ or __ansible-playbook__ executable on various hosts. For example:

> $ ~pca/SYSADM/ansible-massive -r 'cwo-ccc-d' -u root -m shell -a 'rsync -q -a --delete --delete-excluded --exclude=.[a-zA-Z]* /acc/sys/default/ansible /var/lib/'

\- will call __ansible__ and execute rsync on all cwo-ccc-d* machines from
  /acc/sys/Linux/hosts/hosts.masters file. Or

> ~pca/SYSADM/ansible-massive -r 'cwo-ccc-a'

\- will execute ansible ping module on the cwo-ccc-a* consoles.

The playbooks should be specified with __-p__ option. Further information could be
obtained from invocation of __ansible-massive__ without options or with __-h__
option:
    
>    [mgrozak@cwo-ccc-d0lc ~]$ ~pca/SYSADM/ansible-massive -h  
>    Usage: /user/pca/SYSADM/ansible-massive -r <grep regexp> [ -m <module> [-a 'module arguments'] | -p <path to playbook> ] [expert options]
>    
>    This is a wrapper around ansible and ansible-playbook commands. Most of
>    the cl options are 1:1 applicable to ansible/ansible-playbook
>    
>    Necessary options:
>      -r - regular expression for extraction from /acc/sys/Linux/hosts/hosts.master
>           If only this option is specified, 'ping' module will be called
>           for all matched hosts.
>    
>    Ansible execution mode:
>      -m - Ansible module name to execute on the remote system;
>      -a - arguments for Ansible module.
>    
>    Ansible playbook execution options:
>      -p - specify ansible playbook to execute.
>    
>    Expert options:
>      -u - user to connect with, by default 'mgrozak';
>      -f - number of ansible forks;
>      -s - use sudo.
>    
>    Optional features:
>      -l - list hosts which will participate in ansible action
>           without doing anything on them.
>      -h - this message

