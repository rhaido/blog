title: New ansible module: yum2
tags: ansible
public: yes
summary: Ansible module, which was written to improve the speed of original ansible modules.

In my current work at CERN BE-CO group, we've recently switched to
[Ansible](http://www.ansible.com) to manage more then 800 machines. Right from the
beginning (ansible 1.2) of its operation, there was one problem, which was
immediately noticed: original yum
module was (and still is) **extremely** slow, comparing to the similar
functionality of puppet
and even comparing to bare yum. The quick investigation revealed, that default
module uses repoquery in order to find the list of repositories, wherefrom the rpm
can be installed - and, from my point of view, that is a fundamental flaw in the
philosophy. The reason is quite simple - usually, if I want to install some
package, I already know its source, and I do not
need any additional guess work to be done. Also, quite often, all other
repositories, except the really needed ones, are **disabled**, therefore there
is no need for repoquery execution at all. All what is really needed can be described
with the following actions:

```
:::bash
$ ! rpmquery --quiet package && yum install package
```

I.e. if the package is not installed - just fire 'yum' command and that's it!
Don't be bloody clever here, just do the work!

With such thoughts in mind the ansible module **[yum2](https://github.com/rhaido/ansible-modules/blob/master/yum2)** was written in shell. It
mimics the original module behaviour, and just does its work as simply as it's
possible. The example of usages:

## Supported parameters
- disablerepo
    
    Name of a repository or a coma separated list of the repositories to be
    **disabled** during the operations. These repos will not persist beyond the transaction.

- enablerepo
    
    Name of a repository or a coma separated list of the repositories to be
    **enabled** during the operations. These repos will not persist beyond the transaction.

- name

    Package name, which yum will be able to recognize.

- state

    Can be: present latest absent. "present" is the default one. Whether to
    install (present), update (latest) - implies an installation as well, or remove (absent) a package.

- gpgcheck
  
    If set to "no", "--nogpgcheck" option will be added to yum during
    execution.

## Example I - common way of usage

* roles/base/vars/main.yml
```
:::yaml
slc6_pkgs:
  - policycoreutils SL_password_for_singleuser SL_rpm_show_arch autofs nfs-utils iproute
    xinetd libxml2.i686 telnet tftp libgcc.i686 libstdc++.i686 perl-SOAP-Lite pciutils
    bind-utils ntp ksh zsh biosdevname asciidoc aspell automake byacc castor-lib 
    compat-libf2c-34 control-center-extra flex fping gcc gcc-c++ glib gtk+ imake
    imlib indent lpadmincern make man man-pages net-snmp-perl net-snmp-utils nmap
    nss-pam-ldapd numpy openldap-clients openssh-clients perl-Crypt-PasswdMD5
    perl-TermReadKey powertop rcs sigar sysstat tcl tk wget screen strace iftop PyYAML
    wireshark curl xorg-x11-apps ansible python-argparse libcurl libcurl.i686 gedit firefox
  - ImageMagick PyXML SOAPpy net-snmp-libs.i686 dos2unix unix2dos ctags
    openssl.i686 openssl.x86_64 openssl098e.i686 openssl098e.x86_64
    perl-YAML perl-Error apr apr-util neon GitPython xorg-x11-xauth xterm gdb tkcvs hplip

```
* code in roles/base/tasks/main.yml
```
:::yaml
- name: install common software
  action: yum2 name="{{ item }}" state=installed enablerepo=epel
  with_items:
    - ${slc6_pkgs}
```
It's quiet important to follow the format of the example: if you put a '-' in
front of the string, it will be treated as the the separate list member, and new
instance of the module **yum2** will be created in order to handle it. I.e., in
order to minimize the spawning of the new processes and economize a bit of time,
it's worth to form a group of packages, like I've done in my example.

Also, please note the the quotes around "{{ item }}" are essential for correct
operation of the code.

## Example II - installation from URL or directory
```
- action: yum2 name="http://cs-ccr-www1.cern.ch/acc/yum/slc6/main/x86_64/yum-conf-acc-0.2-3.el6.cern.noarch.rpm" state=installed
```
