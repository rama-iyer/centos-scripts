#!/bin/bash
sudo yum -y update
sudo yum -y install openswan

sudo tee /etc/sysctl.conf << EOF
   net.ipv4.ip_forward = 1
   net.ipv4.conf.default.rp_filter = 0
   net.ipv4.conf.default.accept_source_route = 0
EOF

sudo sysctl -p


sudo tee /etc/ipsec.d/Customer1VPN.conf << EOF
conn Tunnel1
	authby=secret
	auto=start
	left=%defaultroute
	leftid=1.1.2.2 # Elastic IP address of OpenSwan Instance
	right=3.3.4.4  # VPN Peer Address of the Customer
	type=tunnel
	ikelifetime=8h
	keylife=1h
	phase2alg=aes128-sha1;modp1024
	ike=aes128-sha1;modp1024
	auth=esp
	keyingtries=%forever
	keyexchange=ike
	leftsubnet=10.10.10.0/24
	rightsubnet=192.168.10.0/24
	dpddelay=10
	dpdtimeout=30
	dpdaction=restart_by_peer
EOF

sudo tee /etc/ipsec.d/Customer1VPN.secrets << EOF
1.1.2.2 3.3.4.4: PSK "xxxxxxPreSharedKeyxxxxxxxx"
EOF


sudo service ipsec restart
sudo service ipsec status
sudo ipsec auto --add Customer1VPN
sudo ipsec whack --listen
sudo ipsec auto --rereadsecrets
sudo ipsec whack --name Customer1VPN --initiate
