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
ls -a

# List all files including hidden files with a forward slash at the end of directories
ls -aF