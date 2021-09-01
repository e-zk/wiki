# `stat`

## Get octal of file

```
	$ # bsd
	$ stat -f "%OLp" /etc/passwd
	644

	$ # linux
	$ stat -c '%A %a %n' /etc/passwd
	-rw-r--r-- 644 /etc/passwd
```
