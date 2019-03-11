#!/bin/bash
set x
systemctl stop firewalld
systemctl mask firewalld
yum groupinstall "Development Tools" -y
yum install psmisc net-tools systemd-devel libdb-devel perl-DBI xfsprogs rsyslog logrotate crontabs file vim locate wget -y
yum update -y

echo 'Done installing softwares and updates, plese reboot the server !"
