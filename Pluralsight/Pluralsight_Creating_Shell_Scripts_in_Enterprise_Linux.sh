# Automating the boring stuff
[root@dev1 Pluralsight]# hostnamectl
   Static hostname: dev1
         Icon name: computer-vm
           Chassis: vm
        Machine ID: f3c60603fba74e1f98c825df9cdc29e7
           Boot ID: a83bc71e0a36409faa73ad21bd6f1699
    Virtualization: vmware
  Operating System: CentOS Linux 7 (Core)
       CPE OS Name: cpe:/o:centos:centos:7
            Kernel: Linux 3.10.0-1160.45.1.el7.x86_64
      Architecture: x86-64

#########################################
# example for loop
[root@dev1 Pluralsight]# for u in user{1..5} ; do
> echo $u
> done
user1
user2
user3
user4
user5
[root@dev1 Pluralsight]#

#########################################
# example of using shebang

[root@dev1 Pluralsight]# vi welcome.sh
[root@dev1 Pluralsight]# cat welcome.sh
echo "hello world"
[root@dev1 Pluralsight]# file welcome.sh
welcome.sh: ASCII text

[root@dev1 Pluralsight]# vi welcome.sh
[root@dev1 Pluralsight]# cat welcome.sh
#!/bin/bash
echo "hello world"
[root@dev1 Pluralsight]# file welcome.sh
welcome.sh: Bourne-Again shell script, ASCII text executable

#########################################

[root@dev1 Pluralsight]# cat welcome.sh
#!/bin/bash
echo "hello world"
[root@dev1 Pluralsight]# chmod -v +x welcome.sh
mode of ‘welcome.sh’ changed from 0644 (rw-r--r--) to 0755 (rwxr-xr-x)
[root@dev1 Pluralsight]#



