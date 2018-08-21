FROM centos:7
MAINTAINER eric <ericzs1208@gmail.com>

RUN yum upgrade
RUN yum -y install vim
RUN yum -y install net-tools
RUN yum -y install epel-release
RUN yum -y install ppp pptp pptp-setup
RUN systemctl stop firewalld.service

#vi options.pptp         ????
#three value server_ip username password
pptpsetup --create test_pptp --server 192.168.10.198 --username root --password root --encrypt --start

ip route replace default dev ppp0