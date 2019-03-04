#!/bin/sh

# On flush
iptables -F
ip6tables -F

# Politiques / Policies
iptables -P OUTPUT DROP
iptables -P INPUT DROP
iptables -P FORWARD DROP
ip6tables -t filter -P OUTPUT DROP
ip6tables -t filter -P INPUT DROP
ip6tables -t filter -P FORWARD DROP

# Connexion établie / Connection established
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
ip6tables -t filter -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
ip6tables -t filter -A OUTPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

# Autoriser le loopback / Allow loopback
iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT
ip6tables -t filter -A INPUT -i lo -j ACCEPT
ip6tables -t filter -A INPUT -o lo -j ACCEPT

# Blocage des pays / Blocking countries
# IPv4
iptables -A INPUT -m geoip --src-cc CN,RU,BR,EC,CZ,IN,PL,RS,AR,UA -j DROP
iptables -A INPUT -m geoip --src-cc MU,EG,AU,MY,AE,JP,DZ,RO,MX,LT -j DROP
iptables -A INPUT -m geoip --src-cc CO,VN,LV,TW,HK,VE,PE,KR,NG,IR -j DROP
iptables -A INPUT -m geoip --src-cc TR,ID,TH,HT,SK,BG,OM,HU,ZA,AT -j DROP
iptables -A INPUT -m geoip --src-cc DK,IE,IL,SE,NL,MV,TN,SG,MQ,IQ -j DROP
iptables -A INPUT -m geoip --src-cc DO,NP,BD,UY,PA,CL,SX,PW,KW,BW -j DROP
iptables -A INPUT -m geoip --src-cc AF,SN,MA,HN,SI,MG,AZ,PY,NO,LA -j DROP
iptables -A INPUT -m geoip --src-cc LK,TG,JO,MK,YE,BY,GT,FI,KE,GR -j DROP
iptables -A INPUT -m geoip --src-cc MD,PK,PS,ME,EU,TZ,BA,CI,NI,GH -j DROP
iptables -A INPUT -m geoip --src-cc SA,LR,HK,BH,GA,HR,CR,ZM,UZ,SO -j DROP
# IPv6
iptables -t filter -A INPUT -m geoip --src-cc CN,RU,BR,EC,CZ,IN,PL,RS,AR,UA -j DROP
iptables -t filter -A INPUT -m geoip --src-cc MU,EG,AU,MY,AE,JP,DZ,RO,MX,LT -j DROP
iptables -t filter -A INPUT -m geoip --src-cc CO,VN,LV,TW,HK,VE,PE,KR,NG,IR -j DROP
iptables -t filter -A INPUT -m geoip --src-cc TR,ID,TH,HT,SK,BG,OM,HU,ZA,AT -j DROP
iptables -t filter -A INPUT -m geoip --src-cc DK,IE,IL,SE,NL,MV,TN,SG,MQ,IQ -j DROP
iptables -t filter -A INPUT -m geoip --src-cc DO,NP,BD,UY,PA,CL,SX,PW,KW,BW -j DROP
iptables -t filter -A INPUT -m geoip --src-cc AF,SN,MA,HN,SI,MG,AZ,PY,NO,LA -j DROP
iptables -t filter -A INPUT -m geoip --src-cc LK,TG,JO,MK,YE,BY,GT,FI,KE,GR -j DROP
iptables -t filter -A INPUT -m geoip --src-cc MD,PK,PS,ME,EU,TZ,BA,CI,NI,GH -j DROP
iptables -t filter -A INPUT -m geoip --src-cc SA,LR,HK,BH,GA,HR,CR,ZM,UZ,SO -j DROP

# Plages d'adresses IP bloquées / IP range blocked
iptables -A INPUT -s 194.53.142.0/24 -j DROP # Pour les IP / For IP 194.53.142.42, 194.53.142.90, 194.53.142.153, 194.53.142.231
iptables -A INPUT -s 185.254.188.0/24 -j DROP # Pour l'IP 185.254.188.215
iptables -A INPUT -s 84.54.36.0/23 -j DROP # Pour l'IP 84.54.36.126

# Adresses IP bloquées / IP address blocked
iptables -A INPUT -s 37.49.224.122 -j DROP
iptables -A INPUT -s 42.11.193.6 -j DROP
iptables -A INPUT -s 191.96.249.23 -j DROP
iptables -A INPUT -s 191.96.249.43 -j DROP

# FTP
iptables -A INPUT -p tcp --dport 20 -j ACCEPT
iptables -A INPUT -p tcp --dport 21 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 20 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 21 -j ACCEPT

# SSH
#iptables -A INPUT -p tcp --dport 22 -j ACCEPT
#iptables -A OUTPUT -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -p tcp --dport 5789 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 5789 -j ACCEPT

# Ping (pour apt-get notamment)
iptables -A INPUT -p udp --dport 53 -j ACCEPT
iptables -A OUTPUT -p udp --dport 53 -j ACCEPT

# HTTP
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 80 -j ACCEPT

# HTTPS
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 443 -j ACCEPT

# MySQL
#iptables -A INPUT -p tcp --dport 3306 -j ACCEPT
#iptables -A OUTPUT -p tcp --dport 3306 -j ACCEPT

# POP
iptables -A INPUT -p tcp --dport 110 -j ACCEPT
iptables -A INPUT -p tcp --dport 995 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 110 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 995 -j ACCEPT

# IMAP
iptables -A INPUT -p tcp --dport 143 -j ACCEPT
iptables -A INPUT -p tcp --dport 993 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 143 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 993 -j ACCEPT

# SMTP
iptables -A INPUT -p tcp --dport 25 -j ACCEPT
iptables -A INPUT -p tcp --dport 465 -j ACCEPT
iptables -A INPUT -p tcp --dport 587 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 25 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 465 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 587 -j ACCEPT

# DHCP
iptables -A INPUT -p udp --match multiport -dports 67,68 -j ACCEPT
iptables -A OUTPUT -p udp --match multiport -dports 67,68 -j ACCEPT

# Sinusbot
iptables -A INPUT -p tcp --dport 8087 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 8087 -j ACCEPT
iptables -A FORWARD -p tcp --dport 8087 -j ACCEPT

# TeamSpeak
iptables -A INPUT -p tcp --dport 2008 -j ACCEPT
iptables -A INPUT -p udp --dport 2010 -j ACCEPT
iptables -A INPUT -p tcp --dport 10011 -j ACCEPT
iptables -A INPUT -p tcp --dport 30033 -j ACCEPT
iptables -A INPUT -p udp --dport 9989 -j ACCEPT
iptables -A INPUT -p udp --dport 9987 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 2008 -j ACCEPT
iptables -A OUTPUT -p udp --dport 2010 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 10011 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 30033 -j ACCEPT
iptables -A OUTPUT -p udp --dport 9989 -j ACCEPT
iptables -A OUTPUT -p udp --dport 9987 -j ACCEPT

# Ping vers OVH (surveillance/monitoring) INPUT
iptables -A INPUT -i ens3 -p icmp --source 37.187.231.251 ACCEPT # mrtg-rbx-100, mrtg-sdg-100, mrtg-gra-100, mrtg-bhs-100
iptables -A INPUT -i ens3 -p icmp --source 151.80.231.244 -j ACCEPT # mrtg-rbx-101
iptables -A INPUT -i ens3 -p icmp --source 151.80.231.245 -j ACCEPT #
mrtg-rbx-102
iptables -A INPUT -i ens3 -p icmp --source 151.80.231.246 -j ACCEPT #
mrtg-rbx-103
iptables -A INPUT -i ens3 -p icmp --source 151.80.231.247 -j ACCEPT #
mrtg-gra-101
iptables -A INPUT -i ens3 -p icmp --source a2.ovh.net -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source 213.186.33.62 -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source 92.222.184.0/24 -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source 92.222.185.0/24 -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source 92.222.186.0/24 -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source 167.114.37.0/24 -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source proxy.p19.ovh.net -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source 213.186.45.4 -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source proxy.rbx.ovh.net -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source 213.251.184.9 -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source proxy.sbg.ovh.net -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source 37.59.0.235 -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source proxy.bhs.ovh.net -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source 8.33.137.2 -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source ping.ovh.net -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source 213.186.50.98 -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source 137.74.168.250 -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source 137.74.168.251 -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source 151.80.118.108/32 -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source netmon-1-rbx.ovh.net -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source netmon-1-gra.ovh.net -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source netmon-1-sbg.ovh.net -j ACCEPT
#iptables -A INPUT -i ens3 -p icmp --source netmon-1-bhs.ovh.net -j ACCEPT
iptables -A INPUT -i ens3 -p icmp --source 37.59.96.4/32 -j ACCEPT

# Ping pour UptimeRobot
iptables -A INPUT -s 69.162.124.224/28 -j ACCEPT
iptables -A INPUT -s 63.143.42.240/28 -j ACCEPT
iptables -A INPUT -s 104.131.107.63 -j ACCEPT
iptables -A INPUT -s 122.248.234.23 -j ACCEPT
iptables -A INPUT -s 128.199.195.156 -j ACCEPT
iptables -A INPUT -s 138.197.150.151 -j ACCEPT
iptables -A INPUT -s 139.59.173.249 -j ACCEPT
iptables -A INPUT -s 146.185.143.14 -j ACCEPT
iptables -A INPUT -s 159.203.30.41 -j ACCEPT
iptables -A INPUT -s 159.89.8.111 -j ACCEPT
iptables -A INPUT -s 165.227.83.148 -j ACCEPT
iptables -A INPUT -s 178.62.52.237 -j ACCEPT
iptables -A INPUT -s 18.221.56.27 -j ACCEPT
iptables -A INPUT -s 188.226.183.141 -j ACCEPT
iptables -A INPUT -s 216.144.250.150 -j ACCEPT
iptables -A INPUT -s 34.223.66.117 -j ACCEPT
iptables -A INPUT -s 46.101.250.135 -j ACCEPT
iptables -A INPUT -s 46.137.190.132 -j ACCEPT
iptables -A INPUT -s 52.60.129.180 -j ACCEPT
iptables -A INPUT -s 54.64.67.106 -j ACCEPT
iptables -A INPUT -s 54.67.10.127 -j ACCEPT
iptables -A INPUT -s 54.79.28.129 -j ACCEPT
iptables -A INPUT -s 54.94.142.218 -j ACCEPT

# Communication entre le service RTM et le serveur
iptables -A INPUT -p udp --dport 6100:6200 -j ACCEPT
iptables -A OUTPUT -p udp --dport 6100:6200 -j ACCEPT
