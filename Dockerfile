FROM centos:7
MAINTAINER eric <ericzs1208@gmail.com>

RUN yum upgrade
	&& yum -y install vim
	&& yum -y install net-tools
	&& yum -y install epel-release
	&& yum -y install ppp pptp pptp-setup
	&& systemctl stop firewalld.service

#vi options.pptp         ????
#three value server_ip username password
pptpsetup --create test_pptp --server 192.168.10.198 --username root --password root --encrypt --start

ip route replace default dev ppp0