#!/bin/sh

# On flush
iptables -F

# Connexion etablie / Connection established
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# Autoriser le loopback / Allow loopback
iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT

# Adresses IP bloques / IP addresses blocked
iptables -A INPUT -s 1.32.12.230 -j DROP
iptables -A INPUT -s 1.52.76.148 -j DROP
iptables -A INPUT -s 1.53.15.120 -j DROP
iptables -A INPUT -s 1.55.245.42 -j DROP
iptables -A INPUT -s 1.119.4.99 -j DROP
iptables -A INPUT -s 1.182.138.146 -j DROP
iptables -A INPUT -s 1.192.240.59 -j DROP
iptables -A INPUT -s 14.20.151.172 -j DROP
iptables -A INPUT -s 14.20.251.92 -j DROP
iptables -A INPUT -s 14.23.90.103 -j DROP
iptables -A INPUT -s 14.141.54.13 -j DROP
iptables -A INPUT -s 14.177.180.2 -j DROP
iptables -A INPUT -s 27.33.136.31 -j DROP
iptables -A INPUT -s 27.74.252.208 -j DROP
iptables -A INPUT -s 27.159.127.242 -j DROP
iptables -A INPUT -s 31.6.31.49 -j DROP
iptables -A INPUT -s 39.168.106.26 -j DROP
iptables -A INPUT -s 39.173.242.89 -j DROP
iptables -A INPUT -s 39.187.47.243 -j DROP
iptables -A INPUT -s 39.190.153.89 -j DROP
iptables -A INPUT -s 39.190.169.110 -j DROP
iptables -A INPUT -s 41.38.104.245 -j DROP
iptables -A INPUT -s 41.42.30.103 -j DROP
iptables -A INPUT -s 41.82.54.160 -j DROP
iptables -A INPUT -s 41.236.116.3 -j DROP
iptables -A INPUT -s 41.248.177.9 -j DROP
iptables -A INPUT -s 42.103.99.46 -j DROP
iptables -A INPUT -s 42.103.219.215 -j DROP
iptables -A INPUT -s 42.112.31.88 -j DROP
iptables -A INPUT -s 42.114.143.219 -j DROP
iptables -A INPUT -s 42.114.202.200 -j DROP
iptables -A INPUT -s 42.118.54.240 -j DROP
iptables -A INPUT -s 45.244.22.19 -j DROP
iptables -A INPUT -s 49.112.107.225 -j DROP
iptables -A INPUT -s 49.228.221.189 -j DROP
iptables -A INPUT -s 58.1.96.208 -j DROP
iptables -A INPUT -s 58.101.115.47 -j DROP
iptables -A INPUT -s 58.107.162.119 -j DROP
iptables -A INPUT -s 58.143.150.109 -j DROP
iptables -A INPUT -s 58.187.135.78 -j DROP
iptables -A INPUT -s 58.216.15.248 -j DROP
iptables -A INPUT -s 59.12.189.181 -j DROP
iptables -A INPUT -s 59.42.68.49 -j DROP
iptables -A INPUT -s 59.45.79.22 -j DROP
iptables -A INPUT -s 59.45.79.24 -j DROP
iptables -A INPUT -s 59.47.5.229 -j DROP
iptables -A INPUT -s 59.47.5.234 -j DROP
iptables -A INPUT -s 59.47.5.242 -j DROP
iptables -A INPUT -s 59.48.119.26 -j DROP
iptables -A INPUT -s 59.63.166.83 -j DROP
iptables -A INPUT -s 59.63.188.2 -j DROP
iptables -A INPUT -s 60.50.2.28 -j DROP
iptables -A INPUT -s 60.163.20.61 -j DROP
iptables -A INPUT -s 60.163.161.32 -j DROP
iptables -A INPUT -s 60.169.49.250 -j DROP
iptables -A INPUT -s 60.182.87.212 -j DROP
iptables -A INPUT -s 60.182.174.58 -j DROP
iptables -A INPUT -s 60.182.238.29 -j DROP
iptables -A INPUT -s 60.184.234.35 -j DROP
iptables -A INPUT -s 60.185.100.35 -j DROP
iptables -A INPUT -s 60.185.178.40 -j DROP
iptables -A INPUT -s 60.185.182.44 -j DROP
iptables -A INPUT -s 60.185.229.135 -j DROP
iptables -A INPUT -s 60.186.154.138 -j DROP
iptables -A INPUT -s 60.239.96.61 -j DROP
iptables -A INPUT -s 61.145.41.98 -j DROP
iptables -A INPUT -s 61.152.106.242 -j DROP
iptables -A INPUT -s 61.153.242.83 -j DROP
iptables -A INPUT -s 61.166.73.213 -j DROP
iptables -A INPUT -s 61.220.69.184 -j DROP
iptables -A INPUT -s 86.245.250.193 -j DROP
iptables -A INPUT -s 101.100.178.139 -j DROP
iptables -A INPUT -s 103.207.36.35 -j DROP
iptables -A INPUT -s 103.207.36.48 -j DROP
iptables -A INPUT -s 103.207.36.113 -j DROP
iptables -A INPUT -s 103.207.36.125 -j DROP
iptables -A INPUT -s 103.207.36.163 -j DROP
iptables -A INPUT -s 103.207.37.31 -j DROP
iptables -A INPUT -s 103.207.37.76 -j DROP
iptables -A INPUT -s 103.207.37.115 -j DROP
iptables -A INPUT -s 103.207.37.207 -j DROP
iptables -A INPUT -s 103.207.38.11 -j DROP
iptables -A INPUT -s 103.207.38.14 -j DROP
iptables -A INPUT -s 103.207.38.68 -j DROP
iptables -A INPUT -s 103.207.38.90 -j DROP
iptables -A INPUT -s 103.207.38.165 -j DROP
iptables -A INPUT -s 103.237.144.112 -j DROP
iptables -A INPUT -s 106.0.5.244 -j DROP
iptables -A INPUT -s 106.2.184.173 -j DROP
iptables -A INPUT -s 106.46.222.162 -j DROP
iptables -A INPUT -s 106.57.46.23 -j DROP
iptables -A INPUT -s 106.57.58.88 -j DROP
iptables -A INPUT -s 106.57.160.134 -j DROP
iptables -A INPUT -s 106.57.160.150 -j DROP
iptables -A INPUT -s 110.175.244.10 -j DROP
iptables -A INPUT -s 111.73.45.16 -j DROP
iptables -A INPUT -s 111.127.119.66 -j DROP
iptables -A INPUT -s 112.78.14.226 -j DROP
iptables -A INPUT -s 112.99.210.248 -j DROP
iptables -A INPUT -s 112.135.61.155 -j DROP
iptables -A INPUT -s 112.204.191.115 -j DROP
iptables -A INPUT -s 112.222.92.198 -j DROP
iptables -A INPUT -s 113.89.81.215 -j DROP
iptables -A INPUT -s 113.90.117.112 -j DROP
iptables -A INPUT -s 113.91.134.188 -j DROP
iptables -A INPUT -s 113.97.48.101 -j DROP
iptables -A INPUT -s 113.98.193.58 -j DROP
iptables -A INPUT -s 113.99.101.138 -j DROP
iptables -A INPUT -s 113.103.185.185 -j DROP
iptables -A INPUT -s 113.104.212.165 -j DROP
iptables -A INPUT -s 113.110.144.31 -j DROP
iptables -A INPUT -s 113.110.162.86 -j DROP
iptables -A INPUT -s 113.121.44.7 -j DROP
iptables -A INPUT -s 113.121.219.11 -j DROP
iptables -A INPUT -s 113.122.8.165 -j DROP
iptables -A INPUT -s 113.122.182.186 -j DROP
iptables -A INPUT -s 113.178.32.44 -j DROP
iptables -A INPUT -s 113.246.129.4 -j DROP
iptables -A INPUT -s 113.251.218.229 -j DROP
iptables -A INPUT -s 114.42.105.157 -j DROP
iptables -A INPUT -s 114.161.238.80 -j DROP
iptables -A INPUT -s 114.233.73.133 -j DROP
iptables -A INPUT -s 115.28.19.102 -j DROP
iptables -A INPUT -s 115.195.77.49 -j DROP
iptables -A INPUT -s 115.196.156.254 -j DROP
iptables -A INPUT -s 115.203.75.134 -j DROP
iptables -A INPUT -s 115.204.195.40 -j DROP
iptables -A INPUT -s 115.209.136.46 -j DROP
iptables -A INPUT -s 115.209.238.107 -j DROP
iptables -A INPUT -s 115.209.238.197 -j DROP
iptables -A INPUT -s 115.210.164.69 -j DROP
iptables -A INPUT -s 115.215.51.111 -j DROP
iptables -A INPUT -s 115.224.203.152 -j DROP
iptables -A INPUT -s 115.226.250.129 -j DROP
iptables -A INPUT -s 115.227.65.233 -j DROP
iptables -A INPUT -s 115.230.92.66 -j DROP
iptables -A INPUT -s 115.231.231.160 -j DROP
iptables -A INPUT -s 115.239.67.202 -j DROP
iptables -A INPUT -s 115.239.103.153 -j DROP
iptables -A INPUT -s 115.249.117.176 -j DROP
iptables -A INPUT -s 116.7.20.171 -j DROP
iptables -A INPUT -s 116.12.146.226 -j DROP
iptables -A INPUT -s 116.25.80.75 -j DROP
iptables -A INPUT -s 116.31.116.4 -j DROP
iptables -A INPUT -s 116.31.116.10 -j DROP
iptables -A INPUT -s 116.31.116.20 -j DROP
iptables -A INPUT -s 116.31.116.21 -j DROP
iptables -A INPUT -s 116.31.116.23 -j DROP
iptables -A INPUT -s 116.31.116.26 -j DROP
iptables -A INPUT -s 116.31.116.27 -j DROP
iptables -A INPUT -s 116.31.116.34 -j DROP
iptables -A INPUT -s 116.31.116.36 -j DROP
iptables -A INPUT -s 116.31.116.37 -j DROP
iptables -A INPUT -s 116.31.116.38 -j DROP
iptables -A INPUT -s 116.31.116.41 -j DROP
iptables -A INPUT -s 116.31.118.187 -j DROP
iptables -A INPUT -s 116.54.221.142 -j DROP
iptables -A INPUT -s 116.199.30.76 -j DROP
iptables -A INPUT -s 116.230.184.10 -j DROP
iptables -A INPUT -s 116.236.124.48 -j DROP
iptables -A INPUT -s 116.236.231.251 -j DROP
iptables -A INPUT -s 116.249.183.20 -j DROP
iptables -A INPUT -s 116.252.34.161 -j DROP
iptables -A INPUT -s 117.21.173.163 -j DROP
iptables -A INPUT -s 117.63.240.48 -j DROP
iptables -A INPUT -s 117.71.18.20 -j DROP
iptables -A INPUT -s 117.81.28.66 -j DROP
iptables -A INPUT -s 117.85.105.170 -j DROP
iptables -A INPUT -s 118.69.61.69 -j DROP
iptables -A INPUT -s 118.70.168.251 -j DROP
iptables -A INPUT -s 118.70.184.22 -j DROP
iptables -A INPUT -s 118.101.255.157 -j DROP
iptables -A INPUT -s 118.122.94.226 -j DROP
iptables -A INPUT -s 118.123.119.102 -j DROP
iptables -A INPUT -s 118.193.20.114 -j DROP
iptables -A INPUT -s 118.209.88.13 -j DROP
iptables -A INPUT -s 119.60.9.7 -j DROP
iptables -A INPUT -s 119.193.140.216 -j DROP
iptables -A INPUT -s 119.130.87.223 -j DROP
iptables -A INPUT -s 119.145.99.238 -j DROP
iptables -A INPUT -s 119.193.140.172 -j DROP
iptables -A INPUT -s 120.69.33.251 -j DROP
iptables -A INPUT -s 121.7.32.63 -j DROP
iptables -A INPUT -s 121.134.178.234 -j DROP
iptables -A INPUT -s 121.139.93.109 -j DROP
iptables -A INPUT -s 121.204.165.9 -j DROP
iptables -A INPUT -s 121.204.165.60 -j DROP
iptables -A INPUT -s 122.5.139.172 -j DROP
iptables -A INPUT -s 122.121.51.64 -j DROP
iptables -A INPUT -s 122.231.14.6 -j DROP
iptables -A INPUT -s 122.241.15.244 -j DROP
iptables -A INPUT -s 122.241.131.69 -j DROP
iptables -A INPUT -s 122.243.87.234 -j DROP
iptables -A INPUT -s 122.243.133.103 -j DROP
iptables -A INPUT -s 122.243.171.101 -j DROP
iptables -A INPUT -s 123.96.172.11 -j DROP
iptables -A INPUT -s 123.110.97.205 -j DROP
iptables -A INPUT -s 123.149.0.33 -j DROP
iptables -A INPUT -s 123.165.32.55 -j DROP
iptables -A INPUT -s 123.168.220.199 -j DROP
iptables -A INPUT -s 123.169.198.95 -j DROP
iptables -A INPUT -s 123.169.207.19 -j DROP
iptables -A INPUT -s 124.36.221.232 -j DROP
iptables -A INPUT -s 124.191.69.195 -j DROP
iptables -A INPUT -s 124.193.106.100 -j DROP
iptables -A INPUT -s 124.205.130.162 -j DROP
iptables -A INPUT -s 125.88.146.108 -j DROP
iptables -A INPUT -s 125.112.13.137 -j DROP
iptables -A INPUT -s 125.113.31.131 -j DROP
iptables -A INPUT -s 125.113.57.98 -j DROP
iptables -A INPUT -s 125.117.101.164 -j DROP
iptables -A INPUT -s 125.117.166.114 -j DROP
iptables -A INPUT -s 125.124.31.110 -j DROP
iptables -A INPUT -s 126.115.239.76 -j DROP
iptables -A INPUT -s 137.74.40.43 -j DROP
iptables -A INPUT -s 151.79.192.75 -j DROP
iptables -A INPUT -s 151.227.144.254 -j DROP
iptables -A INPUT -s 151.235.134.31 -j DROP
iptables -A INPUT -s 171.9.11.29 -j DROP
iptables -A INPUT -s 171.48.43.215 -j DROP
iptables -A INPUT -s 171.208.223.132 -j DROP
iptables -A INPUT -s 171.214.206.107 -j DROP
iptables -A INPUT -s 171.217.156.22 -j DROP
iptables -A INPUT -s 171.232.95.150 -j DROP
iptables -A INPUT -s 171.233.169.100 -j DROP
iptables -A INPUT -s 171.249.247.104 -j DROP
iptables -A INPUT -s 175.117.45.197 -j DROP
iptables -A INPUT -s 175.138.97.192 -j DROP
iptables -A INPUT -s 175.139.25.175 -j DROP
iptables -A INPUT -s 175.143.18.61 -j DROP
iptables -A INPUT -s 178.62.93.40 -j DROP
iptables -A INPUT -s 180.97.197.10 -j DROP
iptables -A INPUT -s 180.97.220.3 -j DROP
iptables -A INPUT -s 180.97.220.16 -j DROP
iptables -A INPUT -s 180.137.11.137 -j DROP
iptables -A INPUT -s 180.168.16.154 -j DROP
iptables -A INPUT -s 182.37.8.25 -j DROP
iptables -A INPUT -s 182.44.35.233 -j DROP
iptables -A INPUT -s 182.44.100.250 -j DROP
iptables -A INPUT -s 182.44.125.194 -j DROP
iptables -A INPUT -s 182.100.67.4 -j DROP
iptables -A INPUT -s 182.100.67.40 -j DROP
iptables -A INPUT -s 182.100.67.62 -j DROP
iptables -A INPUT -s 182.100.67.76 -j DROP
iptables -A INPUT -s 182.100.67.113 -j DROP
iptables -A INPUT -s 182.100.67.118 -j DROP
iptables -A INPUT -s 182.100.67.248 -j DROP
iptables -A INPUT -s 182.100.67.252 -j DROP
iptables -A INPUT -s 182.243.45.126 -j DROP
iptables -A INPUT -s 182.243.102.100 -j DROP
iptables -A INPUT -s 182.243.110.211 -j DROP
iptables -A INPUT -s 182.253.215.109 -j DROP
iptables -A INPUT -s 183.3.202.170 -j DROP
iptables -A INPUT -s 183.3.202.171 -j DROP
iptables -A INPUT -s 183.3.202.172 -j DROP
iptables -A INPUT -s 183.3.202.192 -j DROP
iptables -A INPUT -s 183.16.203.21 -j DROP
iptables -A INPUT -s 183.16.203.71 -j DROP
iptables -A INPUT -s 183.53.91.144 -j DROP
iptables -A INPUT -s 183.60.111.6 -j DROP
iptables -A INPUT -s 183.60.211.137 -j DROP
iptables -A INPUT -s 183.60.227.99 -j DROP
iptables -A INPUT -s 183.61.146.10 -j DROP
iptables -A INPUT -s 183.80.144.202 -j DROP
iptables -A INPUT -s 183.80.178.38 -j DROP
iptables -A INPUT -s 183.152.90.232 -j DROP
iptables -A INPUT -s 185.66.9.221 -j DROP
iptables -A INPUT -s 185.136.151.63 -j DROP
iptables -A INPUT -s 185.136.151.107 -j DROP
iptables -A INPUT -s 193.252.205.15 -j DROP
iptables -A INPUT -s 196.43.235.219 -j DROP
iptables -A INPUT -s 196.210.215.165 -j DROP
iptables -A INPUT -s 196.220.231.199 -j DROP
iptables -A INPUT -s 197.5.30.49 -j DROP
iptables -A INPUT -s 197.37.174.177 -j DROP
iptables -A INPUT -s 197.221.234.21 -j DROP
iptables -A INPUT -s 202.0.190.211 -j DROP
iptables -A INPUT -s 202.52.46.116 -j DROP
iptables -A INPUT -s 202.75.214.116 -j DROP
iptables -A INPUT -s 202.91.230.88 -j DROP
iptables -A INPUT -s 202.137.147.108 -j DROP
iptables -A INPUT -s 210.66.181.36 -j DROP
iptables -A INPUT -s 210.245.88.170 -j DROP
iptables -A INPUT -s 218.0.92.55 -j DROP
iptables -A INPUT -s 218.0.177.39 -j DROP
iptables -A INPUT -s 218.5.241.13 -j DROP
iptables -A INPUT -s 218.16.164.219 -j DROP
iptables -A INPUT -s 218.17.21.235 -j DROP
iptables -A INPUT -s 218.18.32.188 -j DROP
iptables -A INPUT -s 218.65.30.4 -j DROP
iptables -A INPUT -s 218.65.30.30 -j DROP
iptables -A INPUT -s 218.65.30.41 -j DROP
iptables -A INPUT -s 218.65.30.43 -j DROP
iptables -A INPUT -s 218.65.30.56 -j DROP
iptables -A INPUT -s 218.65.30.57 -j DROP
iptables -A INPUT -s 218.65.30.60 -j DROP
iptables -A INPUT -s 218.65.30.86 -j DROP
iptables -A INPUT -s 218.65.30.134 -j DROP
iptables -A INPUT -s 218.65.30.210 -j DROP
iptables -A INPUT -s 218.65.30.217 -j DROP
iptables -A INPUT -s 218.65.30.238 -j DROP
iptables -A INPUT -s 218.87.109.154 -j DROP
iptables -A INPUT -s 218.87.109.245 -j DROP
iptables -A INPUT -s 218.87.109.249 -j DROP
iptables -A INPUT -s 218.89.163.85 -j DROP
iptables -A INPUT -s 218.108.158.77 -j DROP
iptables -A INPUT -s 218.108.190.189 -j DROP
iptables -A INPUT -s 218.108.215.29 -j DROP
iptables -A INPUT -s 218.109.241.60 -j DROP
iptables -A INPUT -s 219.139.225.174 -j DROP
iptables -A INPUT -s 220.132.188.90 -j DROP
iptables -A INPUT -s 220.135.167.211 -j DROP
iptables -A INPUT -s 220.147.28.242 -j DROP
iptables -A INPUT -s 220.185.75.247 -j DROP
iptables -A INPUT -s 220.187.54.8 -j DROP
iptables -A INPUT -s 221.140.57.199 -j DROP
iptables -A INPUT -s 222.44.63.11 -j DROP
iptables -A INPUT -s 222.64.73.208 -j DROP
iptables -A INPUT -s 222.80.13.13 -j DROP
iptables -A INPUT -s 222.186.3.172 -j DROP
iptables -A INPUT -s 222.186.21.119 -j DROP
iptables -A INPUT -s 222.186.34.74 -j DROP
iptables -A INPUT -s 222.186.34.75 -j DROP
iptables -A INPUT -s 222.186.34.88 -j DROP
iptables -A INPUT -s 222.186.34.130 -j DROP
iptables -A INPUT -s 222.186.34.202 -j DROP
iptables -A INPUT -s 222.186.50.215 -j DROP
iptables -A INPUT -s 222.186.51.168 -j DROP
iptables -A INPUT -s 222.186.56.19 -j DROP
iptables -A INPUT -s 222.186.56.45 -j DROP
iptables -A INPUT -s 222.186.56.94 -j DROP
iptables -A INPUT -s 222.186.56.102 -j DROP
iptables -A INPUT -s 222.186.56.119 -j DROP
iptables -A INPUT -s 222.186.160.107 -j DROP
iptables -A INPUT -s 222.244.226.12 -j DROP
iptables -A INPUT -s 223.153.119.137 -j DROP

# Plage d'adresses IP bloquees (Prochain 807) / IP address blocking range (Next 807)
# 2.176.20.199
iptables -I INPUT 1 -s 2.176.0.0/16 -j DROP
# 2.178.124.192
# 2.178.167.106
iptables -I INPUT 2 -s 2.178.0.0/16 -j DROP
# 5.164.112.20
iptables -I INPUT 3 -s 5.164.112.0/22 -j DROP
# 5.189.180.159
iptables -I INPUT 4 -s 5.189.176.0/20 -j DROP
# 5.237.66.12
iptables -I INPUT 5 -s 5.237.64.0/19 -j DROP
# 5.238.247.17
iptables -I INPUT 6 -s 5.238.0.0/16 -j DROP
# 5.239.7.13
iptables -I INPUT 7 -s 5.239.0.0/16 -j DROP
# 13.85.64.237
iptables -I INPUT 8 -s 13.64.0.0/11 -j DROP
iptables -I INPUT 9 -s 13.96.0.0/13 -j DROP
iptables -I INPUT 10 -s 13.104.0.0/14 -j DROP
# 37.27.89.204
iptables -I INPUT 11 -s 37.27.64.0/19 -j DROP
# 37.49.225.61
iptables -I INPUT 12 -s 37.49.225.0/24 -j DROP
# 37.49.226.122
iptables -I INPUT 13 -s 37.49.226.0/24 -j DROP
# 37.236.186.67
iptables -I INPUT 14 -s 37.236.186.0/23 -j DROP
# 37.238.70.88
iptables -I INPUT 15 -s 37.238.64.0/21 -j DROP
# 40.76.48.72
iptables -I INPUT 16 -s 40.74.0.0/15 -j DROP
iptables -I INPUT 17 -s 40.76.0.0/14 -j DROP
iptables -I INPUT 18 -s 40.80.0.0/12 -j DROP
iptables -I INPUT 19 -s 40.96.0.0/12 -j DROP
iptables -I INPUT 20 -s 40.112.0.0/13 -j DROP
iptables -I INPUT 21 -s 40.120.0.0/14 -j DROP
iptables -I INPUT 22 -s 40.124.0.0/16 -j DROP
iptables -I INPUT 23 -s 40.125.0.0/17 -j DROP
# 40.128.4.14
iptables -I INPUT 24 -s 40.128.4.0/22 -j DROP
# 41.96.102.135
iptables -I INPUT 25 -s 41.96.0.0/12 -j DROP
# 45.32.15.243
iptables -I INPUT 26 -s 45.32.0.0/16 -j DROP
iptables -I INPUT 27 -s 45.32.14.0/23 -j DROP
# 45.63.123.116
iptables -I INPUT 28 -s 45.63.0.0/17 -j DROP
iptables -I INPUT 29 -s 45.63.122.0/23 -j DROP
# 46.119.127.209
iptables -I INPUT 30 -s 46.119.112.0/20 -j DROP
# 46.151.52.231
iptables -I INPUT 31 -s 46.151.52.0/24 -j DROP
# 52.36.180.97
iptables -I INPUT 32 -s 52.32.0.0/11 -j DROP
# 52.79.157.217
iptables -I INPUT 33 -s 52.64.0.0/12 -j DROP
iptables -I INPUT 34 -s 52.79.0.0/16 -j DROP
# 54.218.4.82
iptables -I INPUT 35 -s 54.218.0.0/16 -j DROP
iptables -I INPUT 36 -s 54.220.0.0/15 -j DROP
iptables -I INPUT 37 -s 54.216.0.0/14 -j DROP
iptables -I INPUT 38 -s 54.208.0.0/13 -j DROP
# 59.183.25.35
iptables -I INPUT 39 -s 59.183.16.0/20 -j DROP
# 60.10.132.70
iptables -I INPUT 40 -s 60.10.0.0/16 -j DROP
# 61.160.23.222
iptables -I INPUT 41 -s 61.160.0.0/16 -j DROP
# 62.28.213.66
iptables -I INPUT 42 -s 62.28.0.0/16 -j DROP
# 62.57.98.189
iptables -I INPUT 43 -s 62.57.96.0/22 -j DROP
# 62.75.230.134
# 62.75.244.249
iptables -I INPUT 44 -s 62.75.128.0/17 -j DROP
# 62.90.95.171
iptables -I INPUT 45 -s 62.90.0.0/16 -j DROP
# 62.141.35.226
iptables -I INPUT 46 -s 62.141.32.0/20 -j DROP
# 62.181.45.243
iptables -I INPUT 47 -s 62.181.32.0/19 -j DROP
# 62.210.7.62
iptables -I INPUT 48 -s 62.210.0.0/16 -j DROP
# 62.241.35.226
iptables -I INPUT 49 -s 62.241.32.0/16 -j DROP
# 63.154.117.168
iptables -I INPUT 50 -s 63.152.0.0/13 -j DROP
# 65.92.75.233
iptables -I INPUT 51 -s 65.92.0.0/14 -j DROP
iptables -I INPUT 52 -s 65.92.72.0/22 -j DROP
# 66.0.0.140
iptables -I INPUT 53 -s 66.0.0.0/16 -j DROP
iptables -I INPUT 54 -s 66.0.0.136/29 -j DROP
# 67.63.203.91
iptables -I INPUT 55 -s 67.63.192.0/18 -j DROP
# 67.210.97.12
iptables -I INPUT 56 -s 67.210.96.0/19 -j DROP
# 67.211.218.9
iptables -I INPUT 57 -s 67.211.208.0/20 -j DROP
# 69.10.58.155
iptables -I INPUT 58 -s 69.10.32.0/19 -j DROP
iptables -I INPUT 59 -s 69.10.58.0/24 -j DROP
# 71.41.223.62
iptables -I INPUT 60 -s 71.40.0.0/14 -j DROP
# 74.208.44.111
# 74.208.161.179
iptables -I INPUT 61 -s 74.208.0.0/16 -j DROP
# 77.39.11.244
iptables -I INPUT 62 -s 77.39.0.0/17 -j DROP
# 77.243.189.243
iptables -I INPUT 63 -s 77.243.176.0/20 -j DROP
# 78.46.50.246
iptables -I INPUT 64 -s 78.46.0.0/15 -j DROP
# 78.137.87.143
iptables -I INPUT 65 -s 78.137.80.0/21 -j DROP
# 79.143.186.157
iptables -I INPUT 66 -s 79.143.186.0/23 -j DROP
# 80.75.105.150
iptables -I INPUT 67 -s 80.75.96.0/20 -j DROP
# 80.87.205.246
iptables -I INPUT 68 -s 80.87.205.0/24 -j DROP
# 80.148.4.58
iptables -I INPUT 69 -s 80.144.0.0/13 -j DROP
# 80.243.4.198
iptables -I INPUT 70 -s 80.243.0.0/21 -j DROP
# 81.198.71.116
iptables -I INPUT 71 -s 81.198.0.0/16 -j DROP
# 83.219.139.9
iptables -I INPUT 72 -s 83.219.128.0/19 -j DROP
# 85.113.212.211
iptables -I INPUT 73 -s 85.113.212.0/24 -j DROP
# 86.53.112.194
iptables -I INPUT 74 -s 86.53.0.0/16 -j DROP
# 86.104.103.194
iptables -I INPUT 75 -s 86.104.96.0/20 -j DROP
# 86.105.53.74
iptables -I INPUT 76 -s 86.105.52.0/22 -j DROP
# 87.249.204.63
iptables -I INPUT 77 -s 87.249.204.0/24 -j DROP
# 91.99.68.202
iptables -I INPUT 78 -s 91.99.64.0/20 -j DROP
# 91.214.16.34
iptables -I INPUT 79 -s 91.214.16.0/24 -j DROP
# 91.217.91.54
iptables -I INPUT 80 -s 91.217.90.0/23 -j DROP
# 91.224.160.10
# 91.224.160.46
# 91.224.160.47
# 91.224.160.48
# 91.224.160.51
# 91.224.160.53
# 91.224.160.54
iptables -I INPUT 81 -s 91.224.160.0/23 -j DROP
# 91.231.84.41
iptables -I INPUT 82 -s 91.231.84.0/23 -j DROP
# 93.119.61.106
iptables -I INPUT 83 -s 93.119.32.0/19 -j DROP
# 93.174.93.26
iptables -I INPUT 84 -s 93.174.88.0/21 -j DROP
# 94.29.227.149
iptables -I INPUT 85 -s 94.29.128.0/17 -j DROP
# 95.141.27.91
iptables -I INPUT 86 -s 95.141.27.0/24 -j DROP
# 95.141.31.16
iptables -I INPUT 87 -s 95.141.31.0/24 -j DROP
# 95.213.177.125
iptables -I INPUT 88 -s 95.213.128.0/17 -j DROP
# 98.142.52.44
iptables -I INPUT 89 -s 98.142.48.0/20 -j DROP
# 99.235.158.122
iptables -I INPUT 90 -s 99.224.0.0/11 -j DROP
iptables -I INPUT 91 -s 99.235.158.0/23 -j DROP
# 101.200.190.59
iptables -I INPUT 92 -s 101.200.0.0/15 -j DROP
# 103.42.206.167
iptables -I INPUT 93 -s 103.42.206.0/24 -j DROP
# 104.196.27.187
iptables -I INPUT 94 -s 104.196.0.0/14 -j DROP
# 104.236.34.1
# 104.236.252.83
iptables -I INPUT 95 -s 104.236.0.0/16 -j DROP
# 104.250.188.168
iptables -I INPUT 96 -s 104.250.160.0/19 -j DROP
# 107.175.236.37
iptables -I INPUT 97 -s 107.172.0.0/14 -j DROP
iptables -I INPUT 98 -s 107.175.236.64/27 -j DROP
# 107.191.41.12
iptables -I INPUT 99 -s 107.191.32.0/19 -j DROP
iptables -I INPUT 100 -s 107.191.40.0/22 -j DROP
# 108.174.155.117
iptables -I INPUT 101 -s 108.174.144.0/20 -j DROP
# 109.195.84.192
iptables -I INPUT 102 -s 109.195.84.0/24 -j DROP
# 110.36.14.22
iptables -I INPUT 103 -s 110.36.12.0/22 -j DROP
# 112.215.62.88
iptables -I INPUT 104 -s 112.215.0.0/18 -j DROP
# 113.160.158.19
iptables -I INPUT 105 -s 113.160.128.0/19 -j DROP
# 113.175.128.45
iptables -I INPUT 106 -s 113.175.128.0/19 -j DROP
# 116.96.24.40
iptables -I INPUT 107 -s 116.96.0.0/12 -j DROP
# 117.3.36.65
iptables -I INPUT 108 -s 117.0.0.0/13 -j DROP
# 119.2.116.99
iptables -I INPUT 109 -s 119.2.112.0/20 -j DROP
# 119.17.253.150
iptables -I INPUT 110 -s 119.17.253.0/24 -j DROP
# 122.129.80.196
iptables -I INPUT 111 -s 122.129.80.0/24 -j DROP
# 124.67.254.26
iptables -I INPUT 112 -s 124.67.0.0/16 -j DROP
# 124.74.77.206
iptables -I INPUT 113 -s 124.74.0.0/15 -j DROP
# 125.25.226.116
iptables -I INPUT 114 -s 125.25.224.0/19 -j DROP
# 125.212.232.59
# 125.212.232.71
iptables -I INPUT 115 -s 125.212.128.0/17 -j DROP
# 137.135.77.202
iptables -I INPUT 116 -s 137.135.0.0/16 -j DROP
# 137.164.142.27
iptables -I INPUT 117 -s 137.164.0.0/16 -j DROP
# 138.122.240.2
iptables -I INPUT 118 -s 138.122.0.0/16 -j DROP
iptables -I INPUT 119 -s 138.122.240.0/22 -j DROP
# 139.196.182.78
iptables -I INPUT 120 -s 139.196.0.0/16 -j DROP
# 148.216.14.87
iptables -I INPUT 121 -s 148.201.0.0/16 -j DROP
iptables -I INPUT 122 -s 148.202.0.0/15 -j DROP
iptables -I INPUT 123 -s 148.204.0.0/14 -j DROP
iptables -I INPUT 124 -s 148.208.0.0/12 -j DROP
iptables -I INPUT 125 -s 148.216.0.0/16 -j DROP
iptables -I INPUT 126 -s 148.224.0.0/12 -j DROP
iptables -I INPUT 127 -s 148.240.0.0/13 -j DROP
iptables -I INPUT 128 -s 148.248.0.0/15 -j DROP
iptables -I INPUT 129 -s 148.250.0.0/16 -j DROP
# 151.79.192.75
# iptables -I INPUT 130 -s 151.79.0.0/16 -j DROP
# 151.235.134.31
# iptables -I INPUT 131 -s 151.0.0.0/8 -j DROP
# iptables -I INPUT 132 -s 151.235.128.0/18 -j DROP
# 155.133.82.47
iptables -I INPUT 133 -s 155.133.82.0/24 -j DROP
# 158.58.133.43
iptables -I INPUT 134 -s 158.58.128.0/21 -j DROP
# 158.69.52.184
# 158.69.126.144
iptables -I INPUT 135 -s 158.69.0.0/16 -j DROP
# 159.122.133.231
iptables -I INPUT 136 -s 159.122.0.0/16 -j DROP
# 162.220.166.135
iptables -I INPUT 137 -s 162.220.160.0/21 -j DROP
iptables -I INPUT 138 -s 162.220.166.128/25 -j DROP
# 162.243.20.97
iptables -I INPUT 139 -s 162.243.0.0/16 -j DROP
# 163.172.195.251
# 163.172.197.79
iptables -I INPUT 140 -s 163.172.0.0/16 -j DROP
# 169.45.214.219
iptables -I INPUT 141 -s 169.32.0.0/11 -j DROP
# 170.84.88.19
iptables -I INPUT 142 -s 170.84.0.0/16 -j DROP
iptables -I INPUT 143 -s 170.84.88.0/22 -j DROP
# 172.12.82.211
iptables -I INPUT 144 -s 172.0.0.0/12 -j DROP
# 173.239.143.110
iptables -I INPUT 145 -s 173.239.128.0/18 -j DROP
iptables -I INPUT 146 -s 173.239.143.104/29 -j DROP
# 176.98.110.84
iptables -I INPUT 147 -s 176.98.96.0/20 -j DROP
# 176.227.154.205
iptables -I INPUT 148 -s 176.227.144.0/20 -j DROP
# 177.101.135.154
iptables -I INPUT 149 -s 177.101.128.0/20 -j DROP
iptables -I INPUT 150 -s 177.101.135.0/24 -j DROP
# 178.63.13.132
iptables -I INPUT 151 -s 178.63.0.0/16 -j DROP
# 179.36.27.7
# 179.36.163.168
# 179.39.18.223
iptables -I INPUT 152 -s 179.36.0.0/14 -j DROP
# 179.40.184.24
# 179.40.255.229
iptables -I INPUT 153 -s 179.40.0.0/15 -j DROP
# 180.151.30.102
iptables -I INPUT 154 -s 180.151.30.0/24 -j DROP
# 180.250.39.51
iptables -I INPUT 155 -s 180.250.32.0/20 -j DROP
# 181.21.24.245
# 181.22.51.219
# 181.23.176.25
iptables -I INPUT 156 -s 181.20.0.0/14 -j DROP
# 181.24.134.57
# 181.26.135.60
# 181.27.129.200
iptables -I INPUT 157 -s 181.24.0.0/14 -j DROP
# 181.119.46.2
iptables -I INPUT 158 -s 181.119.0.0/16 -j DROP
iptables -I INPUT 159 -s 181.119.0.0/17 -j DROP
# 181.213.212.18
iptables -I INPUT 160 -s 181.213.0.0/16 -j DROP
# 183.195.243.246
iptables -I INPUT 161 -s 183.192.0.0/11 -j DROP
# 185.46.151.30
iptables -I INPUT 162 -s 185.46.148.0/22 -j DROP
# 185.53.91.154
iptables -I INPUT 163 -s 185.53.91.0/24 -j DROP
# 185.58.227.252
iptables -I INPUT 164 -s 185.58.224.0/22 -j DROP
# 185.81.157.225
iptables -I INPUT 165 -s 185.81.156.0/22 -j DROP
# 185.92.72.26
iptables -I INPUT 166 -s 185.92.72.0/24 -j DROP
# 185.93.187.39
iptables -I INPUT 167 -s 185.93.187.0/24 -j DROP
# 185.103.109.37
iptables -I INPUT 168 -s 185.103.109.0/24 -j DROP
# 185.106.92.36
iptables -I INPUT 169 -s 185.106.92.0/24 -j DROP
# 185.110.132.65
# 185.110.132.75
iptables -I INPUT 170 -s 185.110.132.0/24 -j DROP
# 185.159.36.2
iptables -I INPUT 171 -s 185.159.36.0/24 -j DROP
# 186.39.40.87
iptables -I INPUT 172 -s 186.39.0.0/16 -j DROP
# 186.57.158.242
iptables -I INPUT 173 -s 186.57.0.0/16 -j DROP
# 186.60.158.1
# 186.62.55.100
# 186.62.179.163
iptables -I INPUT 174 -s 186.60.0.0/14 -j DROP
# 186.125.157.46
iptables -I INPUT 176 -s 186.124.0.0/15 -j DROP
iptables -I INPUT 177 -s 186.125.157.40/29 -j DROP
# 186.226.66.22
iptables -I INPUT 178 -s 186.226.64.0/20 -j DROP
iptables -I INPUT 179 -s 186.226.66.0/24 -j DROP
# 186.226.208.250
iptables -I INPUT 180 -s 186.226.208.0/21 -j DROP
# 187.157.170.18
iptables -I INPUT 181 -s 187.144.0.0/12 -j DROP
iptables -I INPUT 182 -s 187.157.0.0/16 -j DROP
# 188.34.168.158
iptables -I INPUT 183 -s 188.34.160.0/20 -j DROP
# 188.123.219.200
iptables -I INPUT 184 -s 188.123.192.0/19 -j DROP
# 188.210.118.209
iptables -I INPUT 185 -s 188.210.96.0/19 -j DROP
# 188.232.145.67
iptables -I INPUT 186 -s 188.232.144.0/22 -j DROP
# 189.211.124.188
iptables -I INPUT 187 -s 189.211.64.0/18 -j DROP
iptables -I INPUT 188 -s 189.210.0.0/15 -j DROP
# 190.48.4.43
iptables -I INPUT 189 -s 190.48.0.0/16 -j DROP
# 190.49.126.63
iptables -I INPUT 190 -s 190.49.0.0/16 -j DROP
# 190.122.7.126
iptables -I INPUT 191 -s 190.122.7.0/25 -j DROP
# 190.179.205.124
iptables -I INPUT 192 -s 190.178.0.0/15 -j DROP
# 191.7.66.164
iptables -I INPUT 193 -s 191.7.64.0/21 -j DROP
iptables -I INPUT 194 -s 191.7.64.0/22 -j DROP
# 191.80.211.123
iptables -I INPUT 195 -s 191.80.0.0/14 -j DROP
# 191.84.207.246
# 191.84.215.135
iptables -I INPUT 196 -s 191.84.0.0/15 -j DROP
# 191.205.248.38
iptables -I INPUT 197 -s 191.204.0.0/14 -j DROP
# 192.69.94.169
iptables -I INPUT 198 -s 192.69.88.0/21 -j DROP
# 192.99.28.69
iptables -I INPUT 199 -s 192.99.28.64/28 -j DROP
# 193.201.224.214
# 193.201.224.199
# 193.201.225.24
# 193.201.225.30
# 193.201.227.1
# 193.201.227.124
iptables -I INPUT 200 -s 193.201.224.0/22 -j DROP
# 194.44.244.32
iptables -I INPUT 201 -s 194.44.244.0/24 -j DROP
# 195.3.144.98
# 195.3.144.215
iptables -I INPUT 202 -s 195.3.144.0/22 -j DROP
# 195.154.56.55
iptables -I INPUT 203 -s 195.154.0.0/16 -j DROP
# 198.251.59.147
iptables -I INPUT 204 -s 198.251.48.0/20 -j DROP
# 200.29.235.82
iptables -I INPUT 205 -s 200.29.235.80/28 -j DROP
# 200.87.143.166
iptables -I INPUT 206 -s 200.87.128/17 -j DROP
# 200.94.70.26
iptables -I INPUT 207 -s 200.94.0.0/17 -j DROP
iptables -I INPUT 208 -s 200.94.64.0/19 -j DROP
# 201.73.206.214
iptables -I INPUT 209 -s 201.72.0.0/15 -j DROP
iptables -I INPUT 210 -s 201.73.206.0/24 -j DROP
# 203.122.27.34
iptables -I INPUT 211 -s 203.122.27.0/24 -j DROP
# 204.12.248.115
iptables -I INPUT 212 -s 204.12.192.0/18 -j DROP
iptables -I INPUT 213 -s 204.12.248.96/27 -j DROP
# 211.142.193.36
iptables -I INPUT 214 -s 211.142.128.0/17 -j DROP
# 212.19.136.110
iptables -I INPUT 215 -s 212.19.136.0/24 -j DROP
# 212.83.134.168
iptables -I INPUT 216 -s 212.83.128.0/19 -j DROP
# 212.83.162.68
iptables -I INPUT 217 -s 212.83.160.0/19 -j DROP
# 212.84.160.184
iptables -I INPUT 218 -s 212.84.160.0/19 -j DROP
# 212.129.26.190
iptables -I INPUT 219 -s 212.129.0.0/18 -j DROP
# 213.174.22.114
iptables -I INPUT 220 -s 213.174.22.0/24 -j DROP
# 216.104.196.254
iptables -I INPUT 221 -s 216.104.192.0/20 -j DROP
# 217.77.221.85
iptables -I INPUT 222 -s 217.77.216.0/21 -j DROP
# 217.115.232.165
iptables -I INPUT 223 -s 217.115.224.0/20 -j DROP
# 217.172.189.102
iptables -I INPUT 224 -s 217.172.189.0/24 -j DROP
# 218.93.206.21
iptables -I INPUT 225 -s 218.93.0.0/16 -j DROP
# 218.94.38.216
iptables -I INPUT 226 -s 218.94.0.0/16 -j DROP
# 221.203.3.104
iptables -I INPUT 227 -s 221.200.0.0/14 -j DROP
# 221.207.21.94
iptables -I INPUT 228 -s 221.207.0.0/18 -j DROP
# 221.208.195.106
iptables -I INPUT 229 -s 221.208.0.0/14 -j DROP
# 221.229.172.7
iptables -I INPUT 230 -s 221.228.0.0/14 -j DROP
# 222.255.174.40
iptables -I INPUT 231 -s 222.255.160.0/19 -j DROP
# 223.25.233.46
iptables -I INPUT 232 -s 223.25.233.0/24 -j DROP
# 123.31.20.80
iptables -I INPUT 233 -s 123.31.0.0/19 -j DROP
# 185.25.164.106
iptables -I INPUT 234 -s 185.25.164.0/22 -j DROP
# 195.200.244.54
iptables -I INPUT 235 -s 195.200.244.0/23 -j DROP
# 85.111.38.130
iptables -I INPUT 236 -s 85.111.0.0/17 -j DROP
# 93.6.154.107
iptables -I INPUT 237 -s 93.0.0.0/11 -j DROP
# 52.233.30.47
iptables -I INPUT 238 -s 52.224.0.0/11 -j DROP
# 94.62.108.30
iptables -I INPUT 239 -s 94.60.0.0/14 -j DROP
# 185.32.17.5
iptables -I INPUT 240 -s 185.32.17.0/24 -j DROP
# 134.249.51.247
iptables -I INPUT 241 -s 134.249.0.0/16 -j DROP
# 54.145.128.104
iptables -I INPUT 242 -s 54.144.0.0/12 -j DROP
# 176.94.34.10
iptables -I INPUT 243 -s 176.94.0.0/17 -j DROP
# 137.59.126.161
# 137.59.203.182
iptables -I INPUT 244 -s 137.59.0.0/16 -j DROP
iptables -I INPUT 245 -s 137.59.203.0/24 -j DROP
# 220.225.51.227
iptables -I INPUT 246 -s 220.225.50.0/23 -j DROP
# 123.31.35.40
iptables -I INPUT 247 -s 123.31.32.0/19 -j DROP
# 61.147.110.13
iptables -I INPUT 248 -s 61.147.0.0/16 -j DROP
# 162.213.30.56
iptables -I INPUT 249 -s 162.213.24.0/21 -j DROP
# 80.183.15.225
iptables -I INPUT 250 -s 80.183.0.0/16 -j DROP
# 91.99.26.250
iptables -I INPUT 251 -s 91.99.0.0/19 -j DROP
# 37.147.64.215
iptables -I INPUT 252 -s 37.147.64.0/20 -j DROP
# 185.65.208.146
iptables -I INPUT 253 -s 185.65.208.0/22 -j DROP
# 88.139.237.126
iptables -I INPUT 254 -s 88.136.0.0/13 -j DROP
# 186.5.109.211
iptables -I INPUT 255 -s 186.5.109.192/26 -j DROP
# 37.1.202.253
iptables -I INPUT 256 -s 37.1.200.0/21 -j DROP
# 89.141.6.85
iptables -I INPUT 257 -s 89.141.4.0/22 -j DROP
# 91.76.244.235
iptables -I INPUT 258 -s 91.76.0.0/14 -j DROP
# 190.85.83.230
iptables -I INPUT 259 -s 190.85.0.0/16 -j DROP
# 184.170.152.104
iptables -I INPUT 260 -s 184.170.144.0/20 -j DROP
# 107.189.162.133
iptables -I INPUT 261 -s 107.189.128.0/18 -j DROP
iptables -I INPUT 262 -s 107.189.162.128/26 -j DROP
# 2.235.53.62
iptables -I INPUT 263 -s 2.232.0.0/13 -j DROP
# 171.60.208.4
iptables -I INPUT 264 -s 171.60.192.0/18 -j DROP
# 2.80.164.103
iptables -I INPUT 265 -s 2.80.0.0/14 -j DROP
# 164.132.203.36
iptables -I INPUT 266 -s 164.132.0.0/16 -j DROP
# 117.239.48.242
iptables -I INPUT 267 -s 117.239.48.0/20 -j DROP
# 217.23.3.139
iptables -I INPUT 268 -s 217.23.0.0/20 -j DROP
# 201.176.32.195
# 201.179.183.239
iptables -I INPUT 269 -s 201.176.0.0/14 -j DROP
# 185.26.127.118
iptables -I INPUT 270 -s 185.26.124.0/22 -j DROP
# 27.98.204.116
iptables -I INPUT 271 -s 27.98.192.0/20 -j DROP
# 2.190.87.199
iptables -I INPUT 272 -s 2.190.0.0/16 -j DROP
# 120.197.234.50
iptables -I INPUT 273 -s 120.192.0.0/11 -j DROP
# 185.8.67.36
iptables -I INPUT 274 -s 185.8.67.0/24 -j DROP
# 117.205.90.106
iptables -I INPUT 275 -s 117.205.80.0/20 -j DROP
# 113.190.54.14
iptables -I INPUT 276 -s 113.190.32.0/19 -j DROP
# 66.215.5.11
iptables -I INPUT 277 -s 66.214.0.0/15 -j DROP
iptables -I INPUT 278 -s 66.215.0.0/19 -j DROP
iptables -I INPUT 279 -s 66.215.5.0/28 -j DROP
# 140.129.134.140
iptables -I INPUT 280 -s 140.109.0.0/16 -j DROP
iptables -I INPUT 281 -s 140.110.0.0/15 -j DROP
iptables -I INPUT 282 -s 140.112.0.0/12 -j DROP
iptables -I INPUT 283 -s 140.128.0.0/13 -j DROP
iptables -I INPUT 284 -s 140.136.0.0/15 -j DROP
iptables -I INPUT 285 -s 140.138.0.0/16 -j DROP
# 105.101.21.197
# 105.102.15.8
iptables -I INPUT 286 -s 105.96.0.0/12 -j DROP
# 91.220.131.63
iptables -I INPUT 287 -s 91.220.131.0/24 -j DROP
# 192.185.2.62
iptables -I INPUT 288 -s 192.185.0.0/16 -j DROP
# 89.2.27.212
iptables -I INPUT 289 -s 89.2.0.0/16 -j DROP
# 186.133.134.76
# 186.133.169.194
# 186.134.134.117
iptables -I INPUT 290 -s 186.132.0.0/14 -j DROP
# 130.245.145.207
iptables -I INPUT 291 -s 130.245.0.0/16 -j DROP
# 190.163.235.23
iptables -I INPUT 292 -s 190.162.0.0/15 -j DROP
# 128.206.119.183
iptables -I INPUT 293 -s 128.206.0.0/16 -j DROP
# 187.19.48.6
iptables -I INPUT 294 -s 187.19.48.0/20 -j DROP
iptables -I INPUT 295 -s 187.19.48.0/24 -j DROP
# 5.221.42.14
iptables -I INPUT 296 -s 5.221.32.0/20 -j DROP
# 103.218.116.26
iptables -I INPUT 297 -s 103.218.116.0/22 -j DROP
# 80.184.70.104
iptables -I INPUT 298 -s 80.184.0.0/17 -j DROP
# 173.208.242.242
iptables -I INPUT 299 -s 173.208.128.0/17 -j DROP
# 185.152.255.151
iptables -I INPUT 300 -s 185.152.252.0/22 -j DROP
# 87.138.66.123
# 87.139.17.167
iptables -I INPUT 301 -s 87.128.0.0/11 -j DROP
# 201.254.2.102
# 201.254.141.79
# 201.254.150.137
iptables -I INPUT 302 -s 201.254.0.0/16 -j DROP
# 212.13.119.198
iptables -I INPUT 303 -s 212.13.96.0/19 -j DROP
# 89.47.105.241
iptables -I INPUT 304 -s 89.47.105.0/24 -j DROP
# 190.51.10.111
# 190.51.182.56
iptables -I INPUT 305 -s 190.51.0.0/16 -j DROP
# 122.172.95.36
iptables -I INPUT 306 -s 122.172.0.0/17 -j DROP
# 82.113.72.174
iptables -I INPUT 307 -s 82.113.64.0/19 -j DROP
# 166.149.75.102
iptables -I INPUT 308 -s 166.128.0.0/9 -j DROP
# 37.49.224.160
iptables -I INPUT 309 -s 37.49.224.0/24 -j DROP
# 117.195.47.236
iptables -I INPUT 310 -s 117.195.32.0/20 -j DROP
# 166.82.95.228
iptables -I INPUT 311 -s 166.82.0.0/16 -j DROP
# 122.168.209.99
iptables -I INPUT 312 -s 122.168.209.0/24 -j DROP
# 5.164.97.164
iptables -I INPUT 313 -s 5.164.96.0/22 -j DROP
# 117.195.76.207
iptables -I INPUT 314 -s 117.195.64.0/20 -j DROP
# 46.41.205.191
iptables -I INPUT 315 -s 46.41.192.0/19 -j DROP
# 84.22.139.134
iptables -I INPUT 316 -s 84.22.139.0/24 -j DROP
# 2.177.59.180
iptables -I INPUT 317 -s 2.177.0.0/16 -j DROP
# 117.200.218.1
iptables -I INPUT 318 -s 117.200.208.0/20 -j DROP
# 212.35.127.70
iptables -I INPUT 319 -s 212.35.96.0/19 -j DROP
# 218.161.3.238
iptables -I INPUT 320 -s 218.161.0.0/16 -j DROP
# 1.28.134.191
iptables -I INPUT 321 -s 1.24.0.0/13 -j DROP
# 84.118.26.212
iptables -I INPUT 322 -s 84.118.0.0/16 -j DROP
# 80.117.64.250
iptables -I INPUT 323 -s 80.117.0.0/16 -j DROP
# 85.114.138.79
iptables -I INPUT 324 -s 85.114.128.0/20 -j DROP
# 79.142.67.27
iptables -I INPUT 325 -s 79.142.64.0/22 -j DROP
# 186.116.10.61
iptables -I INPUT 326 -s 186.116.10.56/29 -j DROP
# 176.9.2.237
# 176.9.91.121
iptables -I INPUT 327 -s 176.9.0.0/16 -j DROP
# 79.111.214.228
iptables -I INPUT 328 -s 79.111.0.0/16 -j DROP
# 82.130.252.202
iptables -I INPUT 329 -s 82.130.128.0/17 -j DROP
# 95.243.233.147
iptables -I INPUT 330 -s 95.242.0.0/15 -j DROP
# 218.2.102.210
iptables -I INPUT 331 -s 218.2.0.0/16 -j DROP
# 104.238.167.229
iptables -I INPUT 332 -s 104.238.128.0/18 -j DROP
iptables -I INPUT 333 -s 104.238.167.0/24 -j DROP
# 117.203.52.16
iptables -I INPUT 334 -s 117.203.48.0/20 -j DROP
# 199.168.177.172
iptables -I INPUT 335 -s 199.168.176.0/21 -j DROP
# 92.198.5.52
iptables -I INPUT 336 -s 92.192.0.0/13 -j DROP
# 183.91.71.179
iptables -I INPUT 337 -s 183.91.64.0/19 -j DROP
# 87.121.98.37
iptables -I INPUT 338 -s 87.121.98.0/24 -j DROP
# 46.117.76.245
iptables -I INPUT 339 -s 46.117.0.0/16 -j DROP
# 122.194.229.6
iptables -I INPUT 340 -s 122.192.0.0/14 -j DROP
# 119.252.161.172
iptables -I INPUT 341 -s 119.252.161.0/24 -j DROP
# 157.100.4.6
iptables -I INPUT 342 -s 157.100.0.0/16 -j DROP
# 71.71.207.48
iptables -I INPUT 343 -s 71.64.0.0/12 -j DROP
# 201.16.178.157
iptables -I INPUT 344 -s 201.16.176.0/20 -j DROP
iptables -I INPUT 345 -s 201.16.176.0/21 -j DROP
# 123.183.209.135
iptables -I INPUT 346 -s 123.183.192.0/18 -j DROP
# 68.64.174.189
iptables -I INPUT 347 -s 68.64.128.0/18 -j DROP
iptables -I INPUT 348 -s 68.64.160.0/20 -j DROP
iptables -I INPUT 349 -s 68.64.174.184/29 -j DROP
# 5.45.72.39
iptables -I INPUT 350 -s 5.45.72.0/22 -j DROP
# 185.36.14.9
iptables -I INPUT 351 -s 185.36.12.0/22 -j DROP
# 112.85.42.123
iptables -I INPUT 352 -s 112.80.0.0/13 -j DROP
# 5.189.170.107
iptables -I INPUT 353 -s 5.189.160.0/20 -j DROP
# 103.2.233.2
iptables -I INPUT 354 -s 103.2.233.0/24 -j DROP
# 213.42.15.130
iptables -I INPUT 355 -s 213.42.0.0/18 -j DROP
# 80.241.222.233
iptables -I INPUT 356 -s 80.241.222.0/23 -j DROP
# 213.14.108.194
iptables -I INPUT 357 -s 213.14.108.0/24 -j DROP
# 153.99.182.3
iptables -I INPUT 358 -s 153.99.0.0/16 -j DROP
# 213.184.230.94
iptables -I INPUT 359 -s 213.184.230.0/24 -j DROP
# 221.215.160.138
iptables -I INPUT 360 -s 221.214.0.0/15 -j DROP
# 177.191.26.38
iptables -I INPUT 361 -s 177.191.0.0/16 -j DROP
# 122.189.199.15
# 122.189.199.234
# 122.189.199.245
# 122.189.239.51
# 122.189.242.38
# 122.190.148.121
# 122.190.255.20
# 122.191.198.79
iptables -I INPUT 362 -s 122.188.0.0/14 -j DROP
# 112.246.82.231
# 112.249.90.188
iptables -I INPUT 363 -s 112.224.0.0/11 -j DROP
# 223.99.60.42
iptables -I INPUT 364 -s 223.96.0.0/12 -j DROP
# 178.72.157.13
iptables -I INPUT 365 -s 178.72.128.0/18 -j DROP
# 111.0.236.154
# 111.6.72.223
# 111.40.30.206
iptables -I INPUT 366 -s 111.0.0.0/10 -j DROP
# 175.165.241.253
iptables -I INPUT 367 -s 175.160.0.0/12 -j DROP
# 186.128.66.231
# 186.128.142.238
# 186.129.150.223
# 186.130.9.111
# 186.130.40.228
# 186.130.79.128
# 186.130.94.84
# 186.130.102.132
iptables -I INPUT 368 -s 186.128.0.0/14 -j DROP
# 217.36.216.62
iptables -I INPUT 369 -s 217.32.0.0/12 -j DROP
# 216.252.196.44
iptables -I INPUT 370 -s 216.252.192.0/20 -j DROP
iptables -I INPUT 371 -s 216.252.196.0/24 -j DROP
# 61.52.66.97
iptables -I INPUT 372 -s 61.52.0.0/15 -j DROP
# 188.19.195.163
iptables -I INPUT 373 -s 188.19.192.0/20 -j DROP
# 138.94.173.100
iptables -I INPUT 374 -s 138.94.0.0/16 -j DROP
iptables -I INPUT 375 -s 138.94.172.0/22 -j DROP
# 190.152.1.111
# 190.152.42.130
iptables -I INPUT 376 -s 190.152.0.0/17 -j DROP
# 91.197.232.107
# 91.197.232.109
iptables -I INPUT 377 -s 91.197.232.0/24 -j DROP
# 112.196.23.83
iptables -I INPUT 378 -s 112.196.23.0/24 -j DROP
# 79.44.127.178
iptables -I INPUT 379 -s 79.44.0.0/15 -j DROP
# 178.187.86.63
iptables -I INPUT 380 -s 178.187.0.0/16 -j DROP
# 88.91.179.4
iptables -I INPUT 381 -s 88.88.0.0/13 -j DROP
# 113.205.80.178
iptables -I INPUT 382 -s 113.204.0.0/14 -j DROP
# 78.30.204.225
iptables -I INPUT 383 -s 78.30.192.0/18 -j DROP
# 188.18.73.4
iptables -I INPUT 384 -s 188.18.64.0/19 -j DROP
# 122.191.219.45
iptables -I INPUT 385 -s 122.188.0.0/14 -j DROP
# 191.242.114.61
iptables -I INPUT 386 -s 191.242.112.0/20 -j DROP
iptables -I INPUT 387 -s 191.242.114.0/23 -j DROP
# 117.204.159.105
iptables -I INPUT 388 -s 117.204.144.0/20 -j DROP
# 42.159.246.151
iptables -I INPUT 389 -s 42.159.0.0/16 -j DROP
# 103.207.39.54
iptables -I INPUT 390 -s 103.207.36.0/22 -j DROP
# 188.18.232.242
iptables -I INPUT 391 -s 188.18.224.0/20 -j DROP
# 176.104.217.84
iptables -I INPUT 392 -s 176.104.217.0/24 -j DROP
# 5.141.152.154
# 5.141.189.108
iptables -I INPUT 393 -s 5.141.128.0/18 -j DROP
# 46.63.195.51
iptables -I INPUT 394 -s 46.63.192.0/20 -j DROP
# 92.124.30.203
iptables -I INPUT 395 -s 92.124.0.0/18 -j DROP
# 190.214.69.52
# 190.214.92.176
iptables -I INPUT 396 -s 190.214.0.0/17 -j DROP
iptables -I INPUT 397 -s 190.214.64.0/18 -j DROP
# 91.11.203.143
iptables -I INPUT 398 -s 91.0.0.0/10 -j DROP
# 37.79.191.124
iptables -I INPUT 399 -s 37.79.160.0/19 -j DROP
# 113.1.144.66
iptables -I INPUT 400 -s 113.0.0.0/13 -j DROP
# 182.191.123.164
iptables -I INPUT 401 -s 182.176.0.0/12 -j DROP
# 5.140.107.84
iptables -I INPUT 402 -s 5.140.96.0/20 -j DROP
# 186.208.1.235
iptables -I INPUT 403 -s 186.208.0.0/20 -j DROP
# 109.184.243.60
iptables -I INPUT 404 -s 109.184.128.0/17 -j DROP
# 81.162.231.187
iptables -I INPUT 405 -s 81.162.224.0/20 -j DROP
# 176.10.224.221
iptables -I INPUT 406 -s 176.10.128.0/17 -j DROP
# 89.109.59.14
iptables -I INPUT 407 -s 89.109.56.0/21 -j DROP
# 170.79.153.167
iptables -I INPUT 408 -s 170.79.0.0/16 -j DROP
iptables -I INPUT 409 -s 170.79.152.0/22 -j DROP
# 190.174.169.47
# 190.175.229.233
iptables -I INPUT 410 -s 190.174.0.0/15 -j DROP
# 117.205.206.70
iptables -I INPUT 411 -s 117.205.192.0/20 -j DROP
# 61.177.172.33
iptables -I INPUT 412 -s 61.177.0.0/16 -j DROP
# 136.169.229.223
iptables -I INPUT 413 -s 136.169.0.0/16 -j DROP
iptables -I INPUT 414 -s 136.169.228.0/23 -j DROP
# 178.37.211.95
iptables -I INPUT 415 -s 178.36.0.0/15 -j DROP
# 171.38.199.247
iptables -I INPUT 416 -s 171.36.0.0/14 -j DROP
# 123.120.218.101
iptables -I INPUT 417 -s 123.112.0.0/12 -j DROP
# 190.173.23.98
# 190.173.187.147
iptables -I INPUT 418 -s 190.172.0.0/15 -j DROP
# 179.61.135.65
iptables -I INPUT 419 -s 179.61.135.0/24 -j DROP
# 170.83.197.167
iptables -I INPUT 420 -s 170.83.0.0/16 -j DROP
iptables -I INPUT 421 -s 170.83.196.0/22 -j DROP
# 118.174.195.160
iptables -I INPUT 422 -s 118.174.192.0/19 -j DROP
# 84.236.52.205
iptables -I INPUT 423 -s 84.236.0.0/17 -j DROP
# 115.159.148.161
# 115.159.183.134
iptables -I INPUT 424 -s 115.159.0.0/16 -j DROP
# 202.127.115.133
iptables -I INPUT 425 -s 202.127.112.0/20 -j DROP
# 78.134.49.54
iptables -I INPUT 426 -s 78.134.0.0/17 -j DROP
# 189.139.14.76
iptables -I INPUT 427 -s 189.139.14.0/24 -j DROP
# 186.183.176.31
iptables -I INPUT 428 -s 186.183.128.0/17 -j DROP
# 189.84.203.46
iptables -I INPUT 429 -s 189.84.192.0/20 -j DROP
# 186.227.27.182
iptables -I INPUT 430 -s 186.227.16.0/20 -j DROP
iptables -I INPUT 431 -s 186.227.27.0/24 -j DROP
# 83.128.151.137
iptables -I INPUT 432 -s 83.128.128.0/19 -j DROP
# 182.68.87.235
iptables -I INPUT 433 -s 182.68.0.0/16 -j DROP
# 79.181.167.11
iptables -I INPUT 434 -s 79.181.160.0/20 -j DROP
# 77.94.103.179
iptables -I INPUT 435 -s 77.94.96.0/21 -j DROP
# 78.207.182.88
# 78.216.16.195
# 78.217.162.222
iptables -I INPUT 436 -s 78.192.0.0/10 -j DROP
# 201.150.16.150
iptables -I INPUT 437 -s 201.150.16.0/22 -j DROP
# 95.43.102.145
iptables -I INPUT 438 -s 95.43.96.0/20 -j DROP
# 96.68.24.50
iptables -I INPUT 439 -s 96.64.0.0/11 -j DROP
iptables -I INPUT 440 -s 96.68.0.0/18 -j DROP
iptables -I INPUT 441 -s 96.96.0.0/12 -j DROP
iptables -I INPUT 442 -s 96.112.0.0/13 -j DROP
iptables -I INPUT 443 -s 96.120.0.0/14 -j DROP
iptables -I INPUT 444 -s 96.124.0.0/16 -j DROP
# 140.255.74.207
iptables -I INPUT 445 -s 140.255.0.0/16 -j DROP
# 190.214.153.56
# 190.214.203.120
# 190.214.215.125
# 190.214.229.30
# 190.214.231.40
iptables -I INPUT 446 -s 190.214.128.0/17 -j DROP
# 91.246.104.117
iptables -I INPUT 447 -s 91.246.104.0/21 -j DROP
# 181.112.7.171
# 181.112.116.188
iptables -I INPUT 448 -s 181.112.0.0/16 -j DROP
# 122.174.229.174
iptables -I INPUT 449 -s 122.174.229.0/24 -j DROP
# 181.113.180.237
iptables -I INPUT 450 -s 181.113.0.0/16 -j DROP
# 94.226.148.154
iptables -I INPUT 451 -s 94.226.0.0/15 -j DROP
# 212.220.90.90
iptables -I INPUT 452 -s 212.220.64.0/18 -j DROP
# 183.93.95.194
# 183.93.253.142
# 183.93.255.202
iptables -I INPUT 453 -s 183.92.0.0/14 -j DROP
# 58.19.145.99
# 58.19.145.146
# 58.19.145.221
iptables -I INPUT 454 -s 58.19.0.0/16 -j DROP
# 119.114.125.95
iptables -I INPUT 455 -s 119.112.0.0/13 -j DROP
# 64.138.229.95
iptables -I INPUT 456 -s 64.138.192.0/18 -j DROP
# 46.249.65.54
iptables -I INPUT 457 -s 46.249.65.0/24 -j DROP
# 178.45.91.9
iptables -I INPUT 458 -s 178.45.80.0/20 -j DROP
# 173.212.216.195
iptables -I INPUT 459 -s 173.212.192.0/18 -j DROP
# 178.191.167.217
iptables -I INPUT 460 -s 178.188.0.0/14 -j DROP
# 188.19.16.237
iptables -I INPUT 461 -s 188.19.16.0/20 -j DROP
# 113.53.39.96
iptables -I INPUT 462 -s 113.53.0.0/17 -j DROP
# 86.8.62.207
iptables -I INPUT 463 -s 86.0.0.0/11 -j DROP
# 60.23.152.136
iptables -I INPUT 464 -s 60.16.0.0/13 -j DROP
# 93.103.55.116
iptables -I INPUT 465 -s 93.103.32.0/19 -j DROP
# 190.42.167.132
iptables -I INPUT 466 -s 190.42.167.128/25 -j DROP
# 116.255.243.164
iptables -I INPUT 467 -s 116.255.128.0/17 -j DROP
# 178.193.181.140
iptables -I INPUT 468 -s 178.192.0.0/15 -j DROP
# 217.75.202.66
iptables -I INPUT 469 -s 217.75.202.0/24 -j DROP
# 93.63.55.209
# 93.63.56.182
iptables -I INPUT 470 -s 93.62.0.0/15 -j DROP
# 186.56.142.116
# 186.56.151.136
iptables -I INPUT 471 -s 186.56.128.0/17 -j DROP
# 114.143.88.67
iptables -I INPUT 472 -s 114.143.0.0/16 -j DROP
# 176.50.154.233
iptables -I INPUT 473 -s 176.50.128.0/18 -j DROP
# 181.57.149.131
iptables -I INPUT 474 -s 181.56.0.0/13 -j DROP
iptables -I INPUT 475 -s 181.57.0.0/16 -j DROP
# 27.192.200.185
iptables -I INPUT 476 -s 27.192.0.0/11 -j DROP
# 98.144.138.110
iptables -I INPUT 477 -s 98.144.0.0/13 -j DROP
iptables -I INPUT 478 -s 98.152.0.0/14 -j DROP
iptables -I INPUT 479 -s 98.156.0.0/15 -j DROP
# 46.172.210.68
iptables -I INPUT 480 -s 46.172.210.0/24 -j DROP
# 78.108.110.143
iptables -I INPUT 481 -s 78.108.96.0/20 -j DROP
# 83.213.77.65
iptables -I INPUT 482 -s 83.213.0.0/16 -j DROP
# 176.50.125.143
iptables -I INPUT 483 -s 176.50.0.0/17 -j DROP
# 98.158.120.226
iptables -I INPUT 484 -s 98.158.112.0/20 -j DROP
iptables -I INPUT 485 -s 98.158.120.0/24 -j DROP
# 201.87.232.146
iptables -I INPUT 486 -s 201.87.232.0/21 -j DROP
# 188.16.18.215
iptables -I INPUT 487 -s 188.16.0.0/18 -j DROP
# 101.66.1.108
iptables -I INPUT 488 -s 101.64.0.0/13 -j DROP
# 95.169.93.77
iptables -I INPUT 489 -s 95.169.93.0/24 -j DROP
# 5.196.4.19
iptables -I INPUT 490 -s 5.196.0.0/16 -j DROP
# 182.69.128.104
iptables -I INPUT 491 -s 182.69.0.0/16 -j DROP
# 37.123.154.79
iptables -I INPUT 492 -s 37.123.128.0/18 -j DROP
# 186.58.10.54
# 186.59.38.41
# 186.59.140.10
iptables -I INPUT 493 -s 186.58.0.0/15 -j DROP
# 178.44.189.34
iptables -I INPUT 494 -s 178.44.128.0/18 -j DROP
# 60.208.180.25
# 60.215.218.87
iptables -I INPUT 495 -s 60.208.0.0/13 -j DROP
# 213.163.147.97
iptables -I INPUT 496 -s 213.163.128.0/19 -j DROP
# 39.82.59.133
iptables -I INPUT 497 -s 39.64.0.0/11 -j DROP
# 117.9.168.117
iptables -I INPUT 498 -s 117.8.0.0/13 -j DROP
# 31.162.141.246
iptables -I INPUT 499 -s 31.162.128.0/18 -j DROP
# 113.195.204.176
iptables -I INPUT 500 -s 113.194.0.0/15 -j DROP
# 201.255.57.119
# 201.255.59.199
iptables -I INPUT 501 -s 201.255.0.0/17 -j DROP
# 94.51.16.93
iptables -I INPUT 502 -s 94.51.0.0/19 -j DROP
# 177.38.236.40
iptables -I INPUT 503 -s 177.38.232.0/21 -j DROP
iptables -I INPUT 504 -s 177.38.236.0/24 -j DROP
# 125.209.90.56
iptables -I INPUT 505 -s 125.209.90.0/24 -j DROP
# 218.29.118.2
iptables -I INPUT 506 -s 218.28.0.0/15 -j DROP
# 59.95.115.134
iptables -I INPUT 507 -s 59.95.112.0/20 -j DROP
# 91.121.0.17
# 91.121.91.82
iptables -I INPUT 508 -s 91.121.0.0/16 -j DROP
# 140.206.250.91
iptables -I INPUT 509 -s 140.206.0.0/16 -j DROP
# 77.120.145.104
iptables -I INPUT 510 -s 77.120.144.0/22 -j DROP
# 187.116.108.71
iptables -I INPUT 511 -s 187.116.0.0/14 -j DROP
# 119.254.80.162
iptables -I INPUT 512 -s 119.254.0.0/16 -j DROP
# 188.16.109.80
# 188.16.112.220
iptables -I INPUT 513 -s 188.16.64.0/18 -j DROP
# 114.69.235.232
iptables -I INPUT 514 -s 114.69.224.0/19 -j DROP
# 187.40.17.162
iptables -I INPUT 515 -s 187.40.0.0/14 -j DROP
iptables -I INPUT 516 -s 187.40.0.0/16 -j DROP
# 5.140.200.36
iptables -I INPUT 517 -s 5.140.200.0/24 -j DROP
# 171.49.141.145
iptables -I INPUT 518 -s 171.49.128.0/19 -j DROP
# 190.50.209.246
iptables -I INPUT 519 -s 190.50.0.0/16 -j DROP
# 170.246.210.157
iptables -I INPUT 520 -s 170.246.0.0/16 -j DROP
iptables -I INPUT 521 -s 170.246.208.0/22 -j DROP
# 95.37.130.46
iptables -I INPUT 522 -s 95.37.128.0/18 -j DROP
# 1.62.67.63
iptables -I INPUT 523 -s 1.56.0.0/13 -j DROP
# 183.252.240.201
iptables -I INPUT 524 -s 183.248.0.0/13 -j DROP
# 210.151.76.80
iptables -I INPUT 525 -s 210.151.64.0/18 -j DROP
iptables -I INPUT 526 -s 210.151.76.0/22 -j DROP
# 156.212.101.163
iptables -I INPUT 527 -s 156.212.0.0/16 -j DROP
# 140.246.156.10
iptables -I INPUT 528 -s 140.246.0.0/16 -j DROP
# 123.158.200.247
iptables -I INPUT 529 -s 123.152.0.0/13 -j DROP
# 59.88.122.149
iptables -I INPUT 530 -s 59.88.112.0/20 -j DROP
# 86.57.90.18
iptables -I INPUT 531 -s 86.57.90.0/23 -j DROP
# 170.254.100.80
iptables -I INPUT 532 -s 170.254.0.0/16 -j DROP
iptables -I INPUT 533 -s 170.254.100.0/22 -j DROP
# 90.150.121.39
iptables -I INPUT 534 -s 90.150.112.0/20 -j DROP
# 221.15.147.74
iptables -I INPUT 535 -s 221.14.0.0/15 -j DROP
# 186.178.22.221
# 186.178.179.147
iptables -I INPUT 536 -s 186.178.0.0/16 -j DROP
# 108.175.3.79
iptables -I INPUT 537 -s 108.175.0.0/20 -j DROP
# 87.6.164.44
# 87.7.190.97
iptables -I INPUT 538 -s 87.6.0.0/15 -j DROP
# 178.84.90.150
iptables -I INPUT 539 -s 178.84.0.0/16 -j DROP
# 144.52.83.62
iptables -I INPUT 540 -s 144.52.0.0/16 -j DROP
# 92.126.196.208
iptables -I INPUT 541 -s 92.126.192.0/19 -j DROP
# 110.19.68.148
iptables -I INPUT 542 -s 110.16.0.0/14 -j DROP
# 27.56.149.114
iptables -I INPUT 543 -s 27.56.149.0/24 -j DROP
# 122.179.35.159
iptables -I INPUT 544 -s 122.179.35.0/24 -j DROP
# 59.183.48.243
iptables -I INPUT 545 -s 59.183.48.0/20 -j DROP
# 160.179.143.201
iptables -I INPUT 546 -s 160.179.0.0/16 -j DROP
# 181.39.89.146
iptables -I INPUT 547 -s 181.39.89.144/29 -j DROP
# 178.203.225.237
iptables -I INPUT 548 -s 178.202.0.0/15 -j DROP
# 67.49.19.181
iptables -I INPUT 549 -s 67.48.0.0/15 -j DROP
# 34.194.175.204
# 34.208.165.17
iptables -I INPUT 550 -s 34.192.0.0/10 -j DROP
# 117.206.254.236
iptables -I INPUT 551 -s 117.206.240.0/20 -j DROP
# 131.100.242.77
iptables -I INPUT 552 -s 131.100.0.0/16 -j DROP
iptables -I INPUT 553 -s 131.100.240.0/22 -j DROP
iptables -I INPUT 554 -s 131.100.242.0/24 -j DROP
# 190.237.121.133
iptables -I INPUT 555 -s 190.237.0.0/17 -j DROP
# 201.93.248.182
iptables -I INPUT 556 -s 201.92.0.0/15 -j DROP
iptables -I INPUT 557 -s 201.93.128.0/17 -j DROP
# 120.60.226.245
iptables -I INPUT 558 -s 120.60.192.0/18 -j DROP
# 68.146.241.125
iptables -I INPUT 559 -s 68.144.0.0/13 -j DROP
# 125.41.92.143
iptables -I INPUT 560 -s 125.40.0.0/13 -j DROP
# 120.63.24.72
iptables -I INPUT 561 -s 120.63.0.0/16 -j DROP
# 79.165.2.209
iptables -I INPUT 562 -s 79.165.0.0/16 -j DROP
# 111.165.65.69
iptables -I INPUT 563 -s 111.160.0.0/13 -j DROP
# 31.163.118.127
iptables -I INPUT 564 -s 31.163.64.0/18 -j DROP
# 95.23.189.29
iptables -I INPUT 565 -s 95.23.0.0/16 -j DROP
# 122.162.232.212
iptables -I INPUT 566 -s 122.162.232.0/24 -j DROP
# 96.30.75.196
iptables -I INPUT 567 -s 96.30.64.0/18 -j DROP
# 190.11.182.219
iptables -I INPUT 568 -s 190.11.160.0/19 -j DROP
# 153.34.98.40
iptables -I INPUT 569 -s 153.34.0.0/15 -j DROP
# 37.20.230.118
iptables -I INPUT 570 -s 37.20.128.0/17 -j DROP
# 73.221.181.176
iptables -I INPUT 571 -s 73.0.0.0/8 -j DROP
iptables -I INPUT 572 -s 73.221.0.0/16 -j DROP
# 75.137.209.102
iptables -I INPUT 573 -s 75.128.0.0/12 -j DROP
iptables -I INPUT 574 -s 75.137.192.0/19 -j DROP
# 122.180.171.242
iptables -I INPUT 575 -s 122.180.171.0/24 -j DROP
# 2.187.193.150
iptables -I INPUT 576 -s 2.187.192.0/21 -j DROP
# 176.209.251.182
iptables -I INPUT 577 -s 176.209.192.0/18 -j DROP
# 91.98.163.25
iptables -I INPUT 578 -s 91.98.160.0/21 -j DROP
# 114.212.112.58
iptables -I INPUT 579 -s 114.212.0.0/16 -j DROP
# 91.126.243.179
iptables -I INPUT 580 -s 91.126.240.0/22 -j DROP
# 203.101.177.36
iptables -I INPUT 581 -s 203.101.177.0/24 -j DROP
# 2.92.24.121
iptables -I INPUT 582 -s 2.92.24.0/24 -j DROP
# 177.84.153.251
iptables -I INPUT 583 -s 177.84.152.0/22 -j DROP
# 132.147.83.128
iptables -I INPUT 584 -s 132.147.64.0/18 -j DROP
iptables -I INPUT 585 -s 132.147.83.0/24 -j DROP
# 31.162.212.82
iptables -I INPUT 586 -s 31.162.192.0/18 -j DROP
# 81.62.127.40
iptables -I INPUT 587 -s 81.62.0.0/17 -j DROP
# 186.74.94.58
iptables -I INPUT 588 -s 186.74.0.0/15 -j DROP
# 5.154.28.124
iptables -I INPUT 589 -s 5.154.0.0/17 -j DROP
# 98.125.253.209
iptables -I INPUT 590 -s 98.125.0.0/16 -j DROP
# 182.77.112.134
iptables -I INPUT 591 -s 182.77.112.0/20 -j DROP
# 189.50.157.177
iptables -I INPUT 592 -s 189.50.144.0/20 -j DROP
iptables -I INPUT 593 -s 189.50.157.0/24 -j DROP
# 223.84.128.29
iptables -I INPUT 594 -s 223.64.0.0/11 -j DROP
# 92.62.52.16
iptables -I INPUT 595 -s 92.62.48.0/21 -j DROP
# 187.45.21.133
iptables -I INPUT 596 -s 187.45.16.0/20 -j DROP
iptables -I INPUT 597 -s 187.45.16.0/21 -j DROP
# 5.234.57.117
iptables -I INPUT 598 -s 5.234.0.0/16 -j DROP
# 177.21.193.126
iptables -I INPUT 599 -s 177.21.192.0/20 -j DROP
# 220.250.51.192
iptables -I INPUT 600 -s 220.250.32.0/19 -j DROP
# 111.3.115.137
iptables -I INPUT 601 -s 111.0.0.0/10 -j DROP
# 124.131.20.21
# 124.131.117.93
iptables -I INPUT 602 -s 124.128.0.0/13 -j DROP
# 187.17.25.34
iptables -I INPUT 603 -s 187.17.16.0/20 -j DROP
iptables -I INPUT 604 -s 187.17.25.0/24 -j DROP
# 93.118.125.113
iptables -I INPUT 605 -s 93.118.96.0/19 -j DROP
# 168.228.196.185
iptables -I INPUT 606 -s 168.228.0.0/16 -j DROP
iptables -I INPUT 607 -s 168.228.196.0/22 -j DROP
# 78.106.21.86
iptables -I INPUT 608 -s 78.106.21.0/24 -j DROP
# 221.9.45.52
iptables -I INPUT 609 -s 221.8.0.0/15 -j DROP
# 42.59.97.222
iptables -I INPUT 610 -s 42.56.0.0/14 -j DROP
# 94.50.24.99
iptables -I INPUT 175 -s 94.50.16.0/20 -j DROP
# 153.3.123.24
iptables -I INPUT 611 -s 153.3.0.0/16 -j DROP
# 178.47.221.44
iptables -I INPUT 612 -s 178.47.208.0/20 -j DROP
# 176.49.13.121
iptables -I INPUT 613 -s 176.49.0.0/16 -j DROP
# 200.73.207.130
iptables -I INPUT 614 -s 200.73.200.0/21 -j DROP
# 119.193.140.199
iptables -I INPUT 615 -s 119.192.0.0/11 -j DROP
iptables -I INPUT 616 -s 119.193.140.128/25 -j DROP
# 200.124.227.164
iptables -I INPUT 130 -s 200.124.224.0/20 -j DROP
iptables -I INPUT 131 -s 200.124.227.0/24 -j DROP
# 59.99.157.94
iptables -I INPUT 132 -s 59.99.144.0/20 -j DROP
# 188.18.247.68
iptables -I INPUT 617 -s 188.18.240.0/20 -j DROP
# 93.186.75.63
iptables -I INPUT 618 -s 93.186.74.0/23 -j DROP
# 178.47.97.113
iptables -I INPUT 619 -s 178.47.96.0/19 -j DROP
# 171.118.230.201
iptables -I INPUT 620 -s 171.116.0.0/14 -j DROP
# 200.107.52.95
iptables -I INPUT 621 -s 200.107.32.0/19 -j DROP
iptables -I INPUT 622 -s 200.107.52.0/24 -j DROP
# 170.245.173.2
iptables -I INPUT 623 -s 170.245.0.0/16 -j DROP
iptables -I INPUT 624 -s 170.245.172.0/22 -j DROP
# 117.240.95.202
iptables -I INPUT 625 -s 117.240.80.0/20 -j DROP
# 41.138.121.96
iptables -I INPUT 626 -s 41.138.96.0/19 -j DROP
# 125.211.222.186
iptables -I INPUT 627 -s 125.211.192.0/19 -j DROP
# 37.144.177.217
iptables -I INPUT 628 -s 37.144.177.0/24 -j DROP
# 128.75.94.242
iptables -I INPUT 629 -s 128.75.0.0/16 -j DROP
iptables -I INPUT 630 -s 128.75.0.0/17 -j DROP
# 212.113.224.96
iptables -I INPUT 631 -s 212.113.224.0/23 -j DROP
# 37.21.114.136
iptables -I INPUT 632 -s 37.21.64.0/18 -j DROP
# 173.246.2.77
iptables -I INPUT 633 -s 173.246.0.0/19 -j DROP
# 112.126.65.70
iptables -I INPUT 634 -s 112.124.0.0/14 -j DROP
# 110.224.216.200
iptables -I INPUT 635 -s 110.224.216.0/24 -j DROP
# 181.66.41.216
# 181.67.235.2
iptables -I INPUT 636 -s 181.66.0.0/15 -j DROP
# 183.224.132.30
iptables -I INPUT 637 -s 183.224.0.0/12 -j DROP
# 170.244.22.114
iptables -I INPUT 638 -s 170.244.0.0/16 -j DROP
iptables -I INPUT 639 -s 170.244.20.0/22 -j DROP
# 103.193.100.198
iptables -I INPUT 640 -s 103.193.100.0/22 -j DROP
# 138.23.195.182
iptables -I INPUT 641 -s 138.23.0.0/16 -j DROP
# 94.97.86.201
iptables -I INPUT 642 -s 94.97.86.0/24 -j DROP
# 187.84.180.180
iptables -I INPUT 643 -s 187.84.176.0/20 -j DROP
iptables -I INPUT 644 -s 187.84.180.0/24 -j DROP
# 45.121.232.125
iptables -I INPUT 645 -s 45.112.0.0/12 -j DROP
iptables -I INPUT 646 -s 45.121.232.0/22 -j DROP
# 212.50.230.75
iptables -I INPUT 647 -s 212.50.228.0/22 -j DROP
# 112.36.14.228
iptables -I INPUT 648 -s 112.32.0.0/13 -j DROP
# 203.129.220.220
iptables -I INPUT 649 -s 203.129.220.0/24 -j DROP
# 87.204.41.181
iptables -I INPUT 650 -s 87.204.0.0/15 -j DROP
# 188.113.38.138
iptables -I INPUT 651 -s 188.113.0.0/18 -j DROP
# 87.11.152.116
iptables -I INPUT 652 -s 87.10.0.0/15 -j DROP
# 123.30.108.103
iptables -I INPUT 653 -s 123.30.96.0/20 -j DROP
# 46.63.135.175
iptables -I INPUT 654 -s 46.63.134.0/23 -j DROP
# 195.144.238.69
# 195.144.238.72
iptables -I INPUT 655 -s 195.144.224.0/19 -j DROP
# 83.242.115.16
iptables -I INPUT 656 -s 83.242.112.0/20 -j DROP
# 37.113.96.87
iptables -I INPUT 657 -s 37.113.96.0/22 -j DROP
# 110.230.194.121
iptables -I INPUT 658 -s 110.228.0.0/14 -j DROP
# 181.211.181.152
iptables -I INPUT 659 -s 181.211.0.0/16 -j DROP
# 185.109.59.25
iptables -I INPUT 660 -s 185.109.56.0/22 -j DROP
# 95.83.53.112
iptables -I INPUT 661 -s 95.83.32.0/19 -j DROP
# 60.2.127.118
iptables -I INPUT 662 -s 60.0.0.0/13 -j DROP
# 223.197.203.122
iptables -I INPUT 663 -s 223.197.192.0/19 -j DROP
# 162.254.201.138
iptables -I INPUT 664 -s 162.254.200.0/21 -j DROP
iptables -I INPUT 665 -s 162.254.201.136/29 -j DROP
# 24.123.68.83
iptables -I INPUT 666 -s 24.123.0.0/17 -j DROP
# 98.124.92.219
iptables -I INPUT 667 -s 98.124.64.0/18 -j DROP
# 109.111.227.66
iptables -I INPUT 668 -s 109.111.227.0/24 -j DROP
# 181.169.92.110
iptables -I INPUT 669 -s 181.168.0.0/14 -j DROP
# 110.227.74.27
iptables -I INPUT 670 -s 110.227.74.0/24 -j DROP
# 169.0.238.79
iptables -I INPUT 671 -s 169.0.0.0/15 -j DROP
iptables -I INPUT 672 -s 169.0.0.0/16 -j DROP
# 87.8.17.141
iptables -I INPUT 673 -s 87.8.0.0/15 -j DROP
# 122.163.29.117
iptables -I INPUT 674 -s 122.163.29.0/24 -j DROP
# 79.185.58.23
iptables -I INPUT 675 -s 79.184.0.0/13 -j DROP
# 185.31.35.213
iptables -I INPUT 676 -s 185.31.32.0/22 -j DROP
# 95.236.160.55
iptables -I INPUT 677 -s 95.236.0.0/15 -j DROP
# 186.47.222.12
iptables -I INPUT 678 -s 186.47.0.0/16 -j DROP
# 117.212.70.37
iptables -I INPUT 679 -s 117.212.64.0/20 -j DROP
# 122.179.41.108
iptables -I INPUT 680 -s 122.179.41.0/24 -j DROP
# 156.213.10.41
iptables -I INPUT 681 -s 156.213.0.0/16 -j DROP
# 94.204.254.147
iptables -I INPUT 682 -s 94.204.224.0/19 -j DROP
# 59.92.88.181
iptables -I INPUT 683 -s 59.92.88.0/24 -j DROP
# 186.115.254.65
iptables -I INPUT 684 -s 186.112.0.0/14 -j DROP
# 207.38.228.96
iptables -I INPUT 685 -s 207.38.128.0/17 -j DROP
iptables -I INPUT 686 -s 207.38.192.0/18 -j DROP
iptables -I INPUT 687 -s 207.38.224.0/20 -j DROP
# 75.107.69.176
iptables -I INPUT 688 -s 75.104.0.0/14 -j DROP
# 210.236.80.103
iptables -I INPUT 689 -s 210.236.80.0/21 -j DROP
# 188.212.103.47
iptables -I INPUT 690 -s 188.212.100.0/22 -j DROP
# 177.229.110.195
iptables -I INPUT 691 -s 177.224.0.0/13 -j DROP
# 35.184.20.198 (Sorry Google)
iptables -I INPUT 692 -s 35.184.0.0/13 -j DROP
# 185.36.81.218
iptables -I INPUT 693 -s 185.36.81.0/24 -j DROP
# 191.109.84.168
iptables -I INPUT 694 -s 191.104.0.0/13 -j DROP
iptables -I INPUT 695 -s 191.108.0.0/14 -j DROP
# 68.33.123.70
iptables -I INPUT 696 -s 68.32.0.0/11 -j DROP
iptables -I INPUT 697 -s 68.33.0.0/16 -j DROP
# 98.116.222.34
iptables -I INPUT 698 -s 98.108.0.0/14 -j DROP
iptables -I INPUT 699 -s 98.112.0.0/13 -j DROP
# 46.127.67.221
iptables -I INPUT 700 -s 46.127.0.0/16 -j DROP
# 112.120.131.86
iptables -I INPUT 701 -s 112.120.128.0/19 -j DROP
# 65.126.253.160
iptables -I INPUT 702 -s 65.112.0.0/12 -j DROP
iptables -I INPUT 703 -s 65.126.253.128/26 -j DROP
# 24.56.230.15
iptables -I INPUT 704 -s 24.56.192.0/18 -j DROP
# 190.205.54.150
iptables -I INPUT 705 -s 190.200.0.0/13 -j DROP
iptables -I INPUT 706 -s 190.204.0.0/14 -j DROP
# 104.62.140.208
iptables -I INPUT 707 -s 104.48.0.0/12 -j DROP
# 107.32.85.39
iptables -I INPUT 708 -s 107.24.0.0/13 -j DROP
iptables -I INPUT 709 -s 107.32.0.0/11 -j DROP
iptables -I INPUT 710 -s 107.32.0.0/17 -j DROP
# 190.235.236.210
iptables -I INPUT 711 -s 190.235.128.0/17 -j DROP
# 83.165.225.238
iptables -I INPUT 712 -s 83.165.192.0/18 -j DROP
# 74.66.229.110
iptables -I INPUT 713 -s 74.64.0.0/12 -j DROP
# 176.53.32.252
iptables -I INPUT 714 -s 176.53.32.0/24 -j DROP
# 80.79.63.111
iptables -I INPUT 715 -s 80.79.62.0/23 -j DROP
# 80.218.150.182
iptables -I INPUT 716 -s 80.218.0.0/15 -j DROP
# 67.167.193.239
iptables -I INPUT 717 -s 67.160.0.0/11 -j DROP
iptables -I INPUT 718 -s 67.167.192.0/18 -j DROP
# 68.111.76.54
iptables -I INPUT 719 -s 68.96.0.0/12 -j DROP
iptables -I INPUT 720 -s 68.111.64.0/19 -j DROP
# 188.14.137.146
iptables -I INPUT 721 -s 188.14.0.0/16 -j DROP
# 84.200.93.172
iptables -I INPUT 722 -s 84.200.0.0/16 -j DROP
# 75.65.219.19
iptables -I INPUT 724 -s 75.64.0.0/13 -j DROP
iptables -I INPUT 725 -s 75.64.0.0/15 -j DROP
iptables -I INPUT 726 -s 75.72.0.0/15 -j DROP
iptables -I INPUT 727 -s 75.74.0.0/16 -j DROP
iptables -I INPUT 728 -s 75.75.0.0/17 -j DROP
iptables -I INPUT 729 -s 75.75.128.0/18 -j DROP
# 200.113.223.138
iptables -I INPUT 730 -s 200.113.223/24 -j DROP
# 24.19.135.248
iptables -I INPUT 731 -s 24.16.0.0/13 -j DROP
iptables -I INPUT 732 -s 24.16.0.0/14 -j DROP
# 188.167.117.30
iptables -I INPUT 733 -s 188.167.0.0/17 -j DROP
# 46.237.127.58
iptables -I INPUT 734 -s 46.237.64.0/18 -j DROP
# 79.158.159.95
iptables -I INPUT 735 -s 79.158.0.0/16 -j DROP
# 137.74.253.35
iptables -I INPUT 736 -s 137.74.0.0/16 -j DROP
# 78.18.231.244
iptables -I INPUT 737 -s 78.16.0.0/14 -j DROP
# 85.154.56.166
iptables -I INPUT 738 -s 85.154.32.0/19 -j DROP
# 97.105.122.106
iptables -I INPUT 739 -s 97.96.0.0/13 -j DROP
iptables -I INPUT 740 -s 97.104.0.0/15 -j DROP
iptables -I INPUT 741 -s 97.106.0.0/16 -j DROP
# 185.153.17.4
# 185.153.17.97
# 185.153.17.98
iptables -I INPUT 742 -s 185.153.16.0/22 -j DROP
# 188.143.36.208
iptables -I INPUT 743 -s 188.143.0.0/17 -j DROP
# 82.178.2.61
iptables -I INPUT 744 -s 82.178.0.0/21 -j DROP
# 64.114.131.209
iptables -I INPUT 745 -s 64.114.0.0/16 -j DROP
iptables -I INPUT 746 -s 64.114.131.0/24 -j DROP
iptables -I INPUT 747 -s 64.114.131.128/25 -j DROP
# 5.36.222.170
iptables -I INPUT 748 -s 5.36.128.0/17 -j DROP
# 207.150.195.13
iptables -I INPUT 749 -s 207.150.192.0/19 -j DROP
iptables -I INPUT 750 -s 207.150.192.0/21 -j DROP
# 178.156.32.62
# 178.156.32.136
iptables -I INPUT 751 -s 178.156.0.0/17 -j DROP
# 89.26.36.34
iptables -I INPUT 752 -s 89.26.0.0/17 -j DROP
# 66.168.215.213
iptables -I INPUT 753 -s 66.168.0.0/15 -j DROP
iptables -I INPUT 754 -s 66.168.208.0/21 -j DROP
# 158.85.175.100
iptables -I INPUT 755 -s 158.85.0.0/16 -j DROP
iptables -I INPUT 756 -s 158.85.175.96/28 -j DROP
# 149.56.107.150
iptables -I INPUT 757 -s 149.56.0.0/16 -j DROP
iptables -I INPUT 758 -s 149.56.106.0/23 -j DROP
# 178.157.245.190
iptables -I INPUT 759 -s 178.157.192.0/18 -j DROP
# 89.114.125.31
iptables -I INPUT 760 -s 89.114.0.0/15 -j DROP
# 92.233.140.27
iptables -I INPUT 761 -s 92.233.0.0/16 -j DROP
# 84.148.245.21
iptables -I INPUT 762 -s 84.128.0.0/10 -j DROP
# 151.49.127.219
iptables -I INPUT 763 -s 151.49.0.0/16 -j DROP
# 79.180.239.10
iptables -I INPUT 764 -s 79.180.224.0/20 -j DROP
# 64.250.212.59
iptables -I INPUT 765 -s 64.250.192.0/19 -j DROP
# 52.169.53.153 (Sorry Microsoft)
iptables -I INPUT 766 -s 52.145.0.0/16 -j DROP
iptables -I INPUT 767 -s 52.146.0.0/15 -j DROP
iptables -I INPUT 768 -s 52.148.0.0/14 -j DROP
iptables -I INPUT 769 -s 52.152.0.0/13 -j DROP
iptables -I INPUT 770 -s 52.160.0.0/11 -j DROP
# 73.96.64.80
iptables -I INPUT 771 -s 73.96.0.0/16 -j DROP
# 91.236.116.77
iptables -I INPUT 772 -s 91.236.116.0/24 -j DROP
# 98.158.146.162
iptables -I INPUT 773 -s 98.158.144.0/20 -j DROP
iptables -I INPUT 774 -s 98.158.146.160/27 -j DROP
# 98.159.89.34
iptables -I INPUT 775 -s 98.159.80.0/20 -j DROP
iptables -I INPUT 776 -s 98.159.89.0/25 -j DROP
# 108.172.139.173
iptables -I INPUT 777 -s 108.172.0.0/15 -j DROP
iptables -I INPUT 778 -s 108.172.0.0/16 -j DROP
iptables -I INPUT 779 -s 108.172.136.0/22 -j DROP
# 216.169.143.104
iptables -I INPUT 780 -s 216.169.128.0/20 -j DROP
iptables -I INPUT 781 -s 216.169.143.0/24 -j DROP
# 138.197.107.47
iptables -I INPUT 782 -s 138.197.0.0/16 -j DROP
# 141.134.232.71
iptables -I INPUT 783 -s 141.0.0.0/8 -j DROP
iptables -I INPUT 784 -s 141.134.128.0/17 -j DROP
# 79.138.2.171
iptables -I INPUT 785 -s 79.138.0.0/17 -j DROP
# 27.114.135.235
iptables -I INPUT 786 -s 27.114.128.0/18 -j DROP
# 73.255.138.94
iptables -I INPUT 787 -s 73.255.128.0/17 -j DROP
# 24.192.237.68
iptables -I INPUT 788 -s 24.192.0.0/16 -j DROP
# 157.52.17.148
iptables -I INPUT 789 -s 157.52.0.0/19 -j DROP
# 81.248.78.204
iptables -I INPUT 790 -s 81.248.0.0/16 -j DROP
# 93.56.12.164
iptables -I INPUT 791 -s 93.56.0.0/14 -j DROP
# 184.176.88.41
iptables -I INPUT 792 -s 184.176.0.0/12 -j DROP
iptables -I INPUT 793 -s 184.176.64.0/18 -j DROP
# 88.151.28.192
iptables -I INPUT 794 -s 88.151.28.0/24 -j DROP
# 185.110.184.111
iptables -I INPUT 795 -s 185.110.184.0/22 -j DROP
# 104.209.190.5 (Sorry Microsoft)
iptables -I INPUT 796 -s 104.208.0.0/13 -j DROP
# 81.100.183.189
iptables -I INPUT 797 -s 81.100.0.0/15 -j DROP
# 190.167.211.194
iptables -I INPUT 798 -s 190.167.211.192/29 -j DROP
# 95.60.108.185
iptables -I INPUT 799 -s 95.60.0.0/16 -j DROP
# 217.232.238.22
iptables -I INPUT 800 -s 217.224.0.0/11 -j DROP
# 109.167.10.213
iptables -I INPUT 801 -s 109.167.0.0/17 -j DROP
# 71.227.146.158
iptables -I INPUT 802 -s 71.224.0.0/12 -j DROP
iptables -I INPUT 803 -s 71.227.128.0/17 -j DROP
# 202.52.230.210
iptables -I INPUT 804 -s 202.52.224.0/19 -j DROP
# 46.7.232.80
iptables -I INPUT 805 -s 46.7.128.0/17 -j DROP
# 85.93.93.113
iptables -I INPUT 806 -s 85.93.92.0/22 -j DROP
