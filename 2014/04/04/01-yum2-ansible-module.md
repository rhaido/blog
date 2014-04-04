title: New and Fast Module for Ansible: yum2
tags: ansible
public: yes
summary: Ansible module, which was written to improve the speed of the original one.

Here, at CERN BE-CO, we've recently switched to
[Ansible](http://www.ansible.com) to manage our server and desktop empire.
Right from the beginning one problem was instantly noticed: the speed of execution
of the original yum module was (and still is) **extremely** slow, comparing
to the similar operation in puppet or even bare yum. The quick investigation
revealed, that the default module uses a utility named **repoquery** in order to
find the list of repositories, wherefrom the rpm can be installed - and, from my
point of view, that is a fundamental flaw in its philosophy. Why?
Usually, if system administrator wants to install some
package, he already knows its source, and he does not
need to perform any additional guesswork. Also, rather often, all third-party
repos are **disabled**, and in order to install something from them you must
precisely enable them - therefore there is no need for repoquery execution as well.

To my mind, all what is really needed can be described with the following shell
code:

```
:::bash
#!/bin/bash
x=""
rpms_for_install="p1 p2 p3 p4 ..."

for i in $rpms_for_install
do
  ! rpmquery --quiet $i && x="$x $i"
done

[[ -n $x ]] && yum -y -q install $x
```

I.e. find the packages from the list which are not installed and just fire 'yum install'!
Don't be bloody clever here, just do the work!

The question does appear: why not just remove the execution bit from
**repoquery**? The answer is simple - you actually do not know all the places,
where it is used, therefore you are risking breaking the system at some - and rather
unpredictable - point.

Then, the following question also comes - why does, on earth, the time of
ansible playbook execution matter? Here is the answer - for example, for the desktop
machine we are installing several hundreds of additional packages, and for
__each__
of them there will be a request through repoquery. Only this enlarges the
installation time up to an unacceptable scale, even in the case of cached repository
metadata.

While critisizing the default behaviour I must admit, that repoquery solves one
problem - it always uses **fresh** yum repo metadata, i.e. it queries the latest
list of packages available.

As the result,
**[the new ansible module "yum2" was written](https://github.com/rhaido/ansible-modules/blob/master/yum2)**
in shell. It mimics the original module and does its work as simple as it is
possible.

## Module Parameters
- disablerepo
    
    Name of a repository or a coma separated list of the repositories to be
    **disabled** during the operations. These repos will not persist beyond the transaction.

- enablerepo
    
    Name of a repository or a coma separated list of the repositories to be
    **enabled** during the operations. These repos will not persist beyond the transaction.

- name

    Package name, which _yum_ will be able to recognize.

- state

    Can be: present latest absent. "present" is the default one. Whether to
    install (_present_), update (_latest_, implies an installation as well), or
    remove (_absent_) a package.

- gpgcheck
  
    If set to "no", "--nogpgcheck" option will be added to yum during
    execution.

## Installation
Just like any other ansible module on your system. In *RedHat-based* distributions
I just copy it to */usr/share/ansible*.

## Example I - common way of usage

* roles/somerole/vars/main.yml

```
:::yaml
slc6_pkgs:
- policycoreutils SL_password_for_singleuser SL_rpm_show_arch autofs nfs-utils iproute
  xinetd libxml2.i686 telnet tftp libgcc.i686 libstdc++.i686 perl-SOAP-Lite pciutils
  bind-utils ntp ksh zsh biosdevname asciidoc aspell automake byacc castor-lib 
- ImageMagick PyXML SOAPpy net-snmp-libs.i686 dos2unix unix2dos ctags
  openssl.i686 openssl.x86_64 openssl098e.i686 openssl098e.x86_64
  perl-YAML perl-Error apr apr-util neon GitPython xorg-x11-xauth xterm gdb tkcvs
  hplip
```

* roles/somerole/tasks/main.yml

```
:::yaml
- name: install common software
  action: yum2 name="{{ item }}" state=installed enablerepo=epel
  with_items:
    - ${slc6_pkgs}
```

It is quite important to follow the format of the example: if you put a '&#8211;' in
front of the string, it is treated as a list member, and new
instance of the module **yum2** is created and in the worst case
separate **yum** process will be started in order to install packages.

For example, if you have 5 lines of packages, and if each line is a separate
list member, five instances of **yum** will appear - this is just a huge waste of
system time & resources. To minimize the processes you fork, it is worth to form a group of packages,
like I have done in my example.

Also please note, that the double quotes around **{{ item }}** are essential for a correct
functioning of the code - without them the **ansible-playbook** stops with error
during its execution.

## Example II - RPM installation from URL or directory
```
:::yaml
- action: yum2 name="http://example.com/some-package.rpm" state=installed
```

## Source Code
[Please, have a look here :)](https://github.com/rhaido/ansible-modules/blob/master/yum2)

That is all for the moment!
