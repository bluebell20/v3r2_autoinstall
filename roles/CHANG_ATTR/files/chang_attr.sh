#!/bin/bash

case $1 in 
-a)
	chattr +i /etc/passwd
	chattr +i /etc/shadow
	chattr +i /etc/group
	chattr +i /etc/gshadow
	chattr -R +i /bin /boot /lib /sbin 2> /dev/null
	chattr -R +i /usr/bin /usr/include /usr/lib /usr/sbin /usr/local 2> /dev/null
;;

-d)
	chattr -i /etc/passwd
	chattr -i /etc/shadow
	chattr -i /etc/group
	chattr -i /etc/gshadow
	chattr -R -i /bin /boot /lib /sbin 2> /dev/null
	chattr -R -i /usr/bin /usr/include /usr/lib /usr/sbin /usr/local 2> /dev/null
	chattr -a /var/log/messages /var/log/secure /var/log/maillog 2> /dev/null
;;
esac
