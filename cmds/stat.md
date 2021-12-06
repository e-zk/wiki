# `stat`

## get octal of file

### bsd format

	$ stat -f "%OLp %N" /etc/passwd
	644 /etc/passwd

### gnu format

	$ # linux
	$ stat -c '%A %a %n' /etc/passwd
	-rw-r--r-- 644 /etc/passwd
