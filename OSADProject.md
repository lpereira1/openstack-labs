---
date: "2016-04-22"
draft: false
weight: 1001
title: "OSAD"
---


### Configure jumper

`apt-get install aptitude build-essential git chrony ntpdate openssh-server python-dev sudo`

`server 2.north-america.pool.ntp.org iburst`

`service chrony restart`

Place jumper in network 172.29.236.0/22   Range 172.29.236.1 - 172.29.239.254

`git clone -b TAG https://github.com/openstack/openstack-ansible.git /opt/openstack-ansible`

