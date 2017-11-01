#!/bin/sh

# On flush
iptables -F
ip6tables -F

# Connexion etablie / Connection established
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
ip6tables -t filter -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
ip6tables -t filter -A OUTPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# Autoriser le loopback / Allow loopback
iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT
ip6tables -t filter -A INPUT -i lo -j ACCEPT
ip6tables -t filter -A OUTPUT -o lo -j ACCEPT

# Blocage des pays
# IPv4
iptables -A INPUT -m geoip --src-cc CN -j DROP
iptables -A INPUT -m geoip --src-cc RU -j DROP
iptables -A INPUT -m geoip --src-cc BR -j DROP
iptables -A INPUT -m geoip --src-cc EC -j DROP
iptables -A INPUT -m geoip --src-cc CZ -j DROP
iptables -A INPUT -m geoip --src-cc IN -j DROP
iptables -A INPUT -m geoip --src-cc PL -j DROP
iptables -A INPUT -m geoip --src-cc RS -j DROP
iptables -A INPUT -m geoip --src-cc AR -j DROP
iptables -A INPUT -m geoip --src-cc UA -j DROP
iptables -A INPUT -m geoip --src-cc MU -j DROP
iptables -A INPUT -m geoip --src-cc EG -j DROP
iptables -A INPUT -m geoip --src-cc AU -j DROP
iptables -A INPUT -m geoip --src-cc MY -j DROP
iptables -A INPUT -m geoip --src-cc AE -j DROP
iptables -A INPUT -m geoip --src-cc JP -j DROP
iptables -A INPUT -m geoip --src-cc DZ -j DROP
iptables -A INPUT -m geoip --src-cc RO -j DROP
iptables -A INPUT -m geoip --src-cc MX -j DROP
iptables -A INPUT -m geoip --src-cc LT -j DROP
iptables -A INPUT -m geoip --src-cc CO -j DROP
iptables -A INPUT -m geoip --src-cc VN -j DROP
iptables -A INPUT -m geoip --src-cc LV -j DROP
iptables -A INPUT -m geoip --src-cc TW -j DROP
iptables -A INPUT -m geoip --src-cc HK -j DROP
iptables -A INPUT -m geoip --src-cc VE -j DROP
iptables -A INPUT -m geoip --src-cc PE -j DROP
iptables -A INPUT -m geoip --src-cc KR -j DROP
iptables -A INPUT -m geoip --src-cc NG -j DROP
iptables -A INPUT -m geoip --src-cc IR -j DROP
iptables -A INPUT -m geoip --src-cc TR -j DROP
iptables -A INPUT -m geoip --src-cc AU -j DROP
iptables -A INPUT -m geoip --src-cc ID -j DROP
iptables -A INPUT -m geoip --src-cc TH -j DROP
iptables -A INPUT -m geoip --src-cc HT -j DROP
iptables -A INPUT -m geoip --src-cc SK -j DROP
iptables -A INPUT -m geoip --src-cc BG -j DROP
iptables -A INPUT -m geoip --src-cc OM -j DROP
iptables -A INPUT -m geoip --src-cc HU -j DROP
iptables -A INPUT -m geoip --src-cc ZA -j DROP
iptables -A INPUT -m geoip --src-cc AT -j DROP
iptables -A INPUT -m geoip --src-cc DK -j DROP
iptables -A INPUT -m geoip --src-cc IL -j DROP
iptables -A INPUT -m geoip --src-cc SE -j DROP
iptables -A INPUT -m geoip --src-cc NL -j DROP
iptables -A INPUT -m geoip --src-cc MV -j DROP
iptables -A INPUT -m geoip --src-cc TN -j DROP
iptables -A INPUT -m geoip --src-cc SG -j DROP
iptables -A INPUT -m geoip --src-cc MQ -j DROP
iptables -A INPUT -m geoip --src-cc IQ -j DROP
iptables -A INPUT -m geoip --src-cc DO -j DROP
iptables -A INPUT -m geoip --src-cc NP -j DROP
iptables -A INPUT -m geoip --src-cc BD -j DROP
iptables -A INPUT -m geoip --src-cc UY -j DROP
iptables -A INPUT -m geoip --src-cc PA -j DROP
iptables -A INPUT -m geoip --src-cc CL -j DROP
iptables -A INPUT -m geoip --src-cc SX -j DROP
iptables -A INPUT -m geoip --src-cc PW -j DROP
iptables -A INPUT -m geoip --src-cc KW -j DROP
iptables -A INPUT -m geoip --src-cc MU -j DROP
iptables -A INPUT -m geoip --src-cc BW -j DROP
iptables -A INPUT -m geoip --src-cc AF -j DROP
iptables -A INPUT -m geoip --src-cc SN -j DROP
iptables -A INPUT -m geoip --src-cc UY -j DROP
iptables -A INPUT -m geoip --src-cc MA -j DROP
iptables -A INPUT -m geoip --src-cc HN -j DROP
iptables -A INPUT -m geoip --src-cc SI -j DROP
iptables -A INPUT -m geoip --src-cc MG -j DROP
iptables -A INPUT -m geoip --src-cc AZ -j DROP
iptables -A INPUT -m geoip --src-cc PY -j DROP
iptables -A INPUT -m geoip --src-cc NO -j DROP
iptables -A INPUT -m geoip --src-cc LA -j DROP
iptables -A INPUT -m geoip --src-cc LK -j DROP
iptables -A INPUT -m geoip --src-cc TG -j DROP
iptables -A INPUT -m geoip --src-cc JO -j DROP
iptables -A INPUT -m geoip --src-cc MK -j DROP
iptables -A INPUT -m geoip --src-cc YE -j DROP
iptables -A INPUT -m geoip --src-cc BY -j DROP
iptables -A INPUT -m geoip --src-cc GT -j DROP
iptables -A INPUT -m geoip --src-cc FI -j DROP
iptables -A INPUT -m geoip --src-cc KE -j DROP
iptables -A INPUT -m geoip --src-cc GR -j DROP
iptables -A INPUT -m geoip --src-cc MD -j DROP
iptables -A INPUT -m geoip --src-cc PK -j DROP
iptables -A INPUT -m geoip --src-cc PS -j DROP
iptables -A INPUT -m geoip --src-cc ME -j DROP
iptables -A INPUT -m geoip --src-cc EU -j DROP
iptables -A INPUT -m geoip --src-cc TZ -j DROP
iptables -A INPUT -m geoip --src-cc BA -j DROP
iptables -A INPUT -m geoip --src-cc CI -j DROP
iptables -A INPUT -m geoip --src-cc NI -j DROP
iptables -A INPUT -m geoip --src-cc GH -j DROP
iptables -A INPUT -m geoip --src-cc SA -j DROP
iptables -A INPUT -m geoip --src-cc LR -j DROP
iptables -A INPUT -m geoip --src-cc HK -j DROP
iptables -A INPUT -s 91.121.91.82 -j DROP
iptables -A INPUT -s 91.134.243.207 -j DROP
iptables -A INPUT -s 137.74.119.47 -j DROP
iptables -A INPUT -s 151.80.37.193 -j DROP
iptables -A INPUT -s 151.80.142.230 -j DROP
iptables -A INPUT -s 213.32.14.162 -j DROP
iptables -I INPUT 1 -s 74.208.0.0/16 -j DROP #74.208.161.179
iptables -I INPUT 2 -s 75.64.0.0/13 -j DROP #75.65.219.19
iptables -I INPUT 3 -s 75.64.0.0/15 -j DROP #75.65.219.19
iptables -I INPUT 4 -s 75.72.0.0/15 -j DROP #75.65.219.19
iptables -I INPUT 5 -s 75.74.0.0/16 -j DROP #75.65.219.19
iptables -I INPUT 6 -s 75.75.0.0/17 -j DROP #75.65.219.19
iptables -I INPUT 7 -s 75.75.128.0/18 -j DROP #75.65.219.19
iptables -I INPUT 8 -s 84.200.0.0/16 -j DROP #84.200.93.172
iptables -I INPUT 9 -s 85.93.92.0/22 -j DROP #85.93.93.113
iptables -I INPUT 10 -s 92.39.240.0/20 -j DROP #92.39.245.25
iptables -I INPUT 11 -s 92.233.0.0/16 -j DROP #92.233.140.27
iptables -I INPUT 12 -s 37.120.160.0/19 -j DROP #37.120.186.215
iptables -I INPUT 13 -s 195.154.0.0/16 -j DROP #195.154.102.221
iptables -I INPUT 14 -s 62.210.0.0/16 -j DROP #62.210.192.216
iptables -I INPUT 15 -s 217.182.0.0/16 -j DROP #217.182.253.227
iptables -I INPUT 16 -s 164.132.0.0/16 -j DROP #164.132.107.155
iptables -I INPUT 17 -s 51.254.0.0/15 -j DROP #51.254.102.115
iptables -I INPUT 18 -s 173.198.192.0/18 -j DROP #173.198.243.74
iptables -I INPUT 19 -s 173.198.243.72/30 -j DROP #173.198.243.74
iptables -I INPUT 20 -s 18.165.0.0/16 -j DROP #18.171.5.2
iptables -I INPUT 21 -s 18.166.0.0/15 -j DROP #18.171.5.2
iptables -I INPUT 22 -s 18.168.0.0/14 -j DROP #18.171.5.2
iptables -I INPUT 23 -s 18.172.0.0/15 -j DROP #18.171.5.2
iptables -I INPUT 24 -s 18.174.0.0/16 -j DROP #18.171.5.2
iptables -I INPUT 25 -s 92.222.0.0/16 -j DROP #92.222.84.103
iptables -I INPUT 26 -s 5.189.160.0/20 -j DROP #5.189.172.203
iptables -A OUTPUT -p udp -m udp -m string --hex-string '|03|rev|12|poneytelecom|02|eu' --algo bm -j DROP
iptables -A OUTPUT -p udp -m udp -m string --hex-string '|06|proxad|03|net' --algo bm -j DROP

# IPv6
ip6tables -t filter -A INPUT -m geoip --src-cc CN -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc RU -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc BR -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc EC -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc CZ -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc IN -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc PL -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc RS -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc AR -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc UA -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc MU -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc EG -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc AU -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc MY -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc AE -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc JP -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc DZ -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc RO -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc MX -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc LT -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc CO -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc VN -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc LV -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc TW -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc HK -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc VE -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc PE -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc KR -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc NG -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc IR -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc TR -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc AU -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc ID -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc TH -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc HT -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc SK -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc BG -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc OM -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc HU -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc ZA -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc AT -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc DK -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc IL -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc SE -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc NL -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc MV -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc TN -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc SG -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc MQ -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc IQ -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc DO -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc NP -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc BD -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc UY -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc PA -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc CL -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc SX -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc PW -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc KW -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc MU -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc BW -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc AF -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc SN -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc UY -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc MA -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc HN -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc SI -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc MG -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc AZ -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc PY -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc NO -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc LA -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc LK -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc TG -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc JO -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc MK -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc YE -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc BY -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc GT -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc FI -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc KE -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc GR -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc MD -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc PK -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc PS -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc ME -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc EU -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc TZ -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc BA -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc CI -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc NI -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc GH -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc SA -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc LR -j DROP
ip6tables -t filter -A INPUT -m geoip --src-cc HK -j DROP
