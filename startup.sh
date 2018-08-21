#VPN_NAME
#VPN_SERVER_IP
#VPN_USERNAME
#VPN_PASSWORD
pptpsetup --create $VPN_NAME --server $VPN_SERVER_IP --username $VPN_USERNAME --password $VPN_PASSWORD --encrypt --start
sleep 2
ip route replace default dev ppp0