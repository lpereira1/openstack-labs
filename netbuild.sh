#!/bin/bash
neutron net-create --shared --provider:physical_network provider --router:provider --provider:network_type flat provider-net
neutron subnet-create --name provider-subnet --allocation-pool start=172.16.2.50,end=172.16.2.250 --dns-nameserver 10.0.0.1 --gateway 172.16.2.1 provider-net 172.16.2.0/24
neutron net-create demo-net  
neutron subnet-create --name demo-net_subnet --dns-nameserver 10.0.0.1 --gateway 192.168.30.1 demo-net 192.168.30.0/24
neutron router-create demorouter
neutron router-interface-add demorouter demo-net_subnet
neutron router-gateway-set demorouter provider-net
echo ""
echo "Virtual networking has been installed. You'll have a chance to manually issue every command this script issued a little later on in the class."
