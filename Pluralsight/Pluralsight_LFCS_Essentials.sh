# See the version / release of the current Operating syatem
cat /etc/system-release

# wc -l (WordCount Lines) to find the number of lines in my last argument   !$
wc -l !$

# display the current date and time
date

# what is the date going to be in 40 days
date --date "40 days"

# what was the date 40 days ago
date --date "40 days ago"

# what was the date 40 hours ago
date --date "40 hours ago"

# display the current months calendar
cal

# display 3 month calendar (prev,current,next)
cal -3

# display calendar of a particular month (July 1966)
cal 7 1966

# to exit the terminal use
" Ctrl + D "

# to clear the screen use
" Ctrl + L "

# Show the current terminal that i am connect to
tty

# List all files including hidden files
ls -a /etc/

# List all files including hidden files with a forward slash at the end of directories
ls -aF /etc/

# Long listing of data with revese sort on time (most recently modified files shown last)
# ls -l long -h human readable format for file size -r reverse sort based on -t time
ls -lhrt /etc/

# list the directory itself
ls -ld /etc/
## [rama@dev1 ~]$ ls -ld /etc/
## drwxr-xr-x. 75 root root 8192 Oct 16 14:10 /etc/
# the first d in the permissions indicates a directory

# Apply to output of another command
# Apply ls -l to output of tty command
ls -l $(tty)
## [rama@dev1 ~]$ ls -l $(tty)
## crw--w----. 1 rama tty 136, 2 Oct 24 07:39 /dev/pts/2
# the first c in the permissions indicates a character device

# list block devices on my system
lsblk
## [rama@dev1 ~]$ lsblk
## NAME            MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
## sda               8:0    0   20G  0 disk
## ├─sda1            8:1    0    1G  0 part /boot
## └─sda2            8:2    0   19G  0 part
##   ├─centos-root 253:0    0   17G  0 lvm  /
##   └─centos-swap 253:1    0    2G  0 lvm  [SWAP]
## sr0              11:0    1 1024M  0 rom

# Listing a block device
ls -l /dev/sda
## [rama@dev1 ~]$ ls -l /dev/sda
## brw-rw----. 1 root disk 8, 0 Oct 13 07:51 /dev/sda
# the first b in the permission indicates a block device

# query files from package manager
rpm -qF $(which lsb_release)