#!/bin/bash
set x
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
cat /etc/ssh/sshd_config.bak | sed s/"#Port 22"/"Port 9999"/g > /etc/ssh/sshd_config
service sshd restart
