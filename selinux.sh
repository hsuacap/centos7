#!/bin/bash
set x
setenforce 0

cp /etc/sysconfig/selinux /etc/sysconfig/selinux.bak

cat /etc/sysconfig/selinux.bak | sed s/"SELINUX=enforcing"/"SELINUX=disabled"/g > /etc/sysconfig/selinux

