docker run -d \
  --name=openvpn-as --device /dev/net/tun \
  --cap-add=MKNOD --cap-add=NET_ADMIN \
  -p 943:943 -p 443:443 -p 1194:1194/udp \
  -v /home/bertrand/compose/openvpn:/openvpn \
  --restart=unless-stopped \
  openvpn/openvpn-as
