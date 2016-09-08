#!/bin/sh

# On flush
iptables -F

# Connexion etablie
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# Autoriser le loopback
iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT

# Adresses IP bloques
iptables -A INPUT -s 1.52.76.148 -j DROP
iptables -A INPUT -s 1.53.15.120 -j DROP
iptables -A INPUT -s 1.55.245.42 -j DROP
iptables -A INPUT -s 14.23.90.103 -j DROP
iptables -A INPUT -s 14.141.54.13 -j DROP
iptables -A INPUT -s 14.177.180.2 -j DROP
iptables -A INPUT -s 27.74.252.208 -j DROP
iptables -A INPUT -s 31.6.31.49 -j DROP
iptables -A INPUT -s 41.248.177.9 -j DROP
iptables -A INPUT -s 42.112.31.88 -j DROP
iptables -A INPUT -s 42.114.143.219 -j DROP
iptables -A INPUT -s 42.118.54.240 -j DROP
iptables -A INPUT -s 59.45.79.22 -j DROP
iptables -A INPUT -s 59.45.79.24 -j DROP
iptables -A INPUT -s 59.47.5.229 -j DROP
iptables -A INPUT -s 59.47.5.234 -j DROP
iptables -A INPUT -s 59.47.5.242 -j DROP
iptables -A INPUT -s 61.152.106.242 -j DROP
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
iptables -A INPUT -s 106.0.5.244 -j DROP
iptables -A INPUT -s 112.78.14.226 -j DROP
iptables -A INPUT -s 115.28.19.102 -j DROP
iptables -A INPUT -s 116.12.146.226 -j DROP
iptables -A INPUT -s 116.31.116.4 -j DROP
iptables -A INPUT -s 116.31.116.10 -j DROP
iptables -A INPUT -s 116.31.116.20 -j DROP
iptables -A INPUT -s 116.31.116.21 -j DROP
iptables -A INPUT -s 116.31.116.27 -j DROP
iptables -A INPUT -s 116.31.116.34 -j DROP
iptables -A INPUT -s 116.31.116.36 -j DROP
iptables -A INPUT -s 116.31.116.37 -j DROP
iptables -A INPUT -s 116.31.116.38 -j DROP
iptables -A INPUT -s 116.31.118.187 -j DROP
iptables -A INPUT -s 117.21.173.163 -j DROP
iptables -A INPUT -s 118.69.61.69 -j DROP
iptables -A INPUT -s 118.70.168.251 -j DROP
iptables -A INPUT -s 118.193.20.114 -j DROP
iptables -A INPUT -s 119.60.9.7 -j DROP
iptables -A INPUT -s 119.130.87.223 -j DROP
iptables -A INPUT -s 119.145.99.238 -j DROP
iptables -A INPUT -s 124.193.106.100 -j DROP
iptables -A INPUT -s 125.88.146.108 -j DROP
iptables -A INPUT -s 171.48.43.215 -j DROP
iptables -A INPUT -s 171.232.95.150 -j DROP
iptables -A INPUT -s 171.233.169.100 -j DROP
iptables -A INPUT -s 178.62.93.40 -j DROP
iptables -A INPUT -s 180.97.197.10 -j DROP
iptables -A INPUT -s 180.168.16.154 -j DROP
iptables -A INPUT -s 183.3.202.170 -j DROP
iptables -A INPUT -s 183.3.202.171 -j DROP
iptables -A INPUT -s 183.3.202.172 -j DROP
iptables -A INPUT -s 183.3.202.192 -j DROP
iptables -A INPUT -s 183.53.91.144 -j DROP
iptables -A INPUT -s 183.60.211.137 -j DROP
iptables -A INPUT -s 183.60.227.99 -j DROP
iptables -A INPUT -s 183.61.146.10 -j DROP
iptables -A INPUT -s 197.37.174.177 -j DROP
iptables -A INPUT -s 202.52.46.116 -j DROP
iptables -A INPUT -s 202.75.214.116 -j DROP
iptables -A INPUT -s 210.245.88.170 -j DROP
iptables -A INPUT -s 218.65.30.4 -j DROP
iptables -A INPUT -s 218.65.30.41 -j DROP
iptables -A INPUT -s 218.65.30.57 -j DROP
iptables -A INPUT -s 218.65.30.60 -j DROP
iptables -A INPUT -s 218.65.30.86 -j DROP
iptables -A INPUT -s 218.65.30.217 -j DROP
iptables -A INPUT -s 218.87.109.245 -j DROP
iptables -A INPUT -s 218.87.109.249 -j DROP
iptables -A INPUT -s 221.140.57.199 -j DROP
iptables -A INPUT -s 222.186.3.172 -j DROP
iptables -A INPUT -s 222.186.21.119 -j DROP
iptables -A INPUT -s 222.186.34.75 -j DROP
iptables -A INPUT -s 222.186.34.88 -j DROP
iptables -A INPUT -s 222.186.34.202 -j DROP
iptables -A INPUT -s 222.186.50.215 -j DROP
iptables -A INPUT -s 222.186.56.45 -j DROP
iptables -A INPUT -s 222.186.56.94 -j DROP
iptables -A INPUT -s 222.186.56.102 -j DROP
iptables -A INPUT -s 222.186.56.119 -j DROP
iptables -A INPUT -s 222.186.160.107 -j DROP

# Plage d'adresses IP bloques (Prochain 216)
# 5.164.112.20
iptables -I INPUT 1 -s 5.164.112.0/22 -j DROP
# 5.189.180.159
iptables -I INPUT 2 -s 5.189.176.0/20 -j DROP
# 5.238.247.17
iptables -I INPUT 3 -s 5.238.0.0/16 -j DROP
# 5.239.7.13
iptables -I INPUT 4 -s 5.239.0.0/16 -j DROP
# 13.85.64.237
iptables -I INPUT 5 -s 13.64.0.0/11 -j DROP
iptables -I INPUT 6 -s 13.96.0.0/13 -j DROP
iptables -I INPUT 7 -s 13.104.0.0/14 -j DROP
# 37.27.89.204
iptables -I INPUT 8 -s 37.27.64.0/19 -j DROP
# 37.49.225.61
iptables -I INPUT 9 -s 37.49.225.0/24 -j DROP
# 37.236.186.67
iptables -I INPUT 10 -s 37.236.186.0/23 -j DROP
# 37.238.70.88
iptables -I INPUT 11 -s 37.238.64.0/21 -j DROP
# 40.76.48.72
iptables -I INPUT 12 -s 40.74.0.0/15 -j DROP
iptables -I INPUT 13 -s 40.76.0.0/14 -j DROP
iptables -I INPUT 14 -s 40.80.0.0/12 -j DROP
iptables -I INPUT 15 -s 40.96.0.0/12 -j DROP
iptables -I INPUT 16 -s 40.112.0.0/13 -j DROP
iptables -I INPUT 17 -s 40.120.0.0/14 -j DROP
iptables -I INPUT 18 -s 40.124.0.0/16 -j DROP
iptables -I INPUT 19 -s 40.125.0.0/17 -j DROP
# 40.128.4.14
iptables -I INPUT 20 -s 40.128.4.0/22 -j DROP
# 41.96.102.135
iptables -I INPUT 21 -s 41.96.0.0/12 -j DROP
# 45.63.123.116
iptables -I INPUT 22 -s 45.63.0.0/17 -j DROP
iptables -I INPUT 23 -s 45.63.122.0/23 -j DROP
# 46.151.52.231
iptables -I INPUT 24 -s 46.151.52.0/24 -j DROP
# 52.36.180.97
iptables -I INPUT 25 -s 52.32.0.0/11 -j DROP
# 54.218.4.82
iptables -I INPUT 26 -s 54.218.0.0/16 -j DROP
iptables -I INPUT 27 -s 54.220.0.0/15 -j DROP
iptables -I INPUT 28 -s 54.216.0.0/14 -j DROP
iptables -I INPUT 29 -s 54.208.0.0/13 -j DROP
# 60.10.132.70
iptables -I INPUT 30 -s 60.10.0.0/16 -j DROP
# 62.28.213.66
iptables -I INPUT 31 -s 62.28.0.0/16 -j DROP
# 62.90.95.171
iptables -I INPUT 32 -s 62.90.0.0/16 -j DROP
# 62.141.35.226
iptables -I INPUT 33 -s 62.141.32.0/20 -j DROP
# 62.210.7.62
iptables -I INPUT 34 -s 62.210.0.0/16 -j DROP
# 66.0.0.140
iptables -I INPUT 35 -s 66.0.0.0/16 -j DROP
iptables -I INPUT 36 -s 66.0.0.136/29 -j DROP
# 67.211.218.9
iptables -I INPUT 37 -s 67.211.208.0/20 -j DROP
# 69.10.58.155
iptables -I INPUT 38 -s 69.10.32.0/19 -j DROP
iptables -I INPUT 39 -s 69.10.58.0/24 -j DROP
# 71.41.223.62
iptables -I INPUT 40 -s 71.40.0.0/14 -j DROP
# 77.39.11.244
iptables -I INPUT 41 -s 77.39.0.0/17 -j DROP
# 77.243.189.243
iptables -I INPUT 42 -s 77.243.176.0/20 -j DROP
# 78.46.50.246
iptables -I INPUT 43 -s 78.46.0.0/15 -j DROP
# 79.143.186.157
iptables -I INPUT 44 -s 79.143.186.0/23 -j DROP
# 80.243.4.198
iptables -I INPUT 45 -s 80.243.0.0/21 -j DROP
# 81.198.71.116
iptables -I INPUT 46 -s 81.198.0.0/16 -j DROP
# 85.113.212.211
iptables -I INPUT 47 -s 85.113.212.0/24 -j DROP
# 91.214.16.34
iptables -I INPUT 48 -s 91.214.16.0/24 -j DROP
# 91.217.91.54
iptables -I INPUT 49 -s 91.217.90.0/23 -j DROP
# 91.224.160.10
# 91.224.160.46
# 91.224.160.47
# 91.224.160.48
# 91.224.160.51
# 91.224.160.53
# 91.224.160.54
iptables -I INPUT 50 -s 91.224.160.0/23 -j DROP
# 91.231.84.41
iptables -I INPUT 51 -s 91.231.84.0/23 -j DROP
# 94.29.227.149
iptables -I INPUT 52 -s 94.29.128.0/17 -j DROP
# 95.141.27.91
iptables -I INPUT 53 -s 95.141.27.0/24 -j DROP
# 95.141.31.16
iptables -I INPUT 54 -s 95.141.31.0/24 -j DROP
# 95.213.177.125
iptables -I INPUT 55 -s 95.213.128.0/17 -j DROP
# 98.142.52.44
iptables -I INPUT 56 -s 98.142.48.0/20 -j DROP
# 103.42.206.167
iptables -I INPUT 57 -s 103.42.206.0/24 -j DROP
# 104.236.34.1
# 104.236.252.83
iptables -I INPUT 58 -s 104.236.0.0/16 -j DROP
# 107.191.41.12
iptables -I INPUT 59 -s 107.191.32.0/19 -j DROP
iptables -I INPUT 60 -s 107.191.40.0/22 -j DROP
# 108.174.155.117
iptables -I INPUT 61 -s 108.174.144.0/20 -j DROP
# 110.36.14.22
iptables -I INPUT 62 -s 110.36.12.0/22 -j DROP
# 113.160.158.19
iptables -I INPUT 63 -s 113.160.128.0/19 -j DROP
# 113.175.128.45
iptables -I INPUT 64 -s 113.175.128.0/19 -j DROP
# 116.96.24.40
iptables -I INPUT 65 -s 116.96.0.0/12 -j DROP
# 119.2.116.99
iptables -I INPUT 66 -s 119.2.112.0/20 -j DROP
# 119.17.253.150
iptables -I INPUT 67 -s 119.17.253.0/24 -j DROP
# 122.129.80.196
iptables -I INPUT 68 -s 122.129.80.0/24 -j DROP
# 124.74.77.206
iptables -I INPUT 69 -s 124.74.0.0/15 -j DROP
# 125.212.232.59
# 125.212.232.71
iptables -I INPUT 70 -s 125.212.128.0/17 -j DROP
# 137.135.77.202
iptables -I INPUT 71 -s 137.135.0.0/16 -j DROP
# 137.164.142.27
iptables -I INPUT 72 -s 137.164.0.0/16 -j DROP
# 138.122.240.2
iptables -I INPUT 73 -s 138.122.0.0/16 -j DROP
iptables -I INPUT 74 -s 138.122.240.0/22 -j DROP
# 139.196.182.78
iptables -I INPUT 75 -s 139.196.0.0/16 -j DROP
# 151.79.192.75
iptables -I INPUT 76 -s 151.79.0.0/16 -j DROP
# 158.58.133.43
iptables -I INPUT 77 -s 158.58.128.0/21 -j DROP
# 159.122.133.231
iptables -I INPUT 78 -s 159.122.0.0/16 -j DROP
# 162.220.166.135
iptables -I INPUT 79 -s 162.220.160.0/21 -j DROP
iptables -I INPUT 80 -s 162.220.166.128/25 -j DROP
# 162.243.20.97
iptables -I INPUT 81 -s 162.243.0.0/16 -j DROP
# 163.172.195.251
# 163.172.197.79
iptables -I INPUT 82 -s 163.172.0.0/16 -j DROP
# 169.45.214.219
iptables -I INPUT 83 -s 169.32.0.0/11 -j DROP
# 170.84.88.19
iptables -I INPUT 84 -s 170.84.0.0/16 -j DROP
iptables -I INPUT 85 -s 170.84.88.0/22 -j DROP
# 172.12.82.211
iptables -I INPUT 86 -s 172.0.0.0/12 -j DROP
# 173.239.143.110
iptables -I INPUT 87 -s 173.239.128.0/18 -j DROP
iptables -I INPUT 88 -s 173.239.143.104/29 -j DROP
# 176.98.110.84
iptables -I INPUT 89 -s 176.98.96.0/20 -j DROP
# 176.227.154.205
iptables -I INPUT 90 -s 176.227.144.0/20 -j DROP
# 178.63.13.132
iptables -I INPUT 91 -s 178.63.0.0/16 -j DROP
# 179.40.184.24
# 179.40.255.229
iptables -I INPUT 92 -s 179.40.0.0/15 -j DROP
# 180.151.30.102
iptables -I INPUT 93 -s 180.151.30.0/24 -j DROP
# 180.250.39.51
iptables -I INPUT 94 -s 180.250.32.0/20 -j DROP
# 181.22.51.219
iptables -I INPUT 95 -s 181.20.0.0/14 -j DROP
# 181.26.135.60
iptables -I INPUT 96 -s 181.24.0.0/14 -j DROP
# 181.119.46.2
iptables -I INPUT 97 -s 181.119.0.0/16 -j DROP
iptables -I INPUT 98 -s 181.119.0.0/17 -j DROP
# 181.213.212.18
iptables -I INPUT 99 -s 181.213.0.0/16 -j DROP
# 183.195.243.246
iptables -I INPUT 100 -s 183.192.0.0/11 -j DROP
# 185.53.91.154
iptables -I INPUT 101 -s 185.53.91.0/24 -j DROP
# 185.92.72.26
iptables -I INPUT 102 -s 185.92.72.0/24 -j DROP
# 185.103.109.37
iptables -I INPUT 103 -s 185.103.109.0/24 -j DROP
# 185.106.92.36
iptables -I INPUT 104 -s 185.106.92.0/24 -j DROP
# 185.110.132.65
# 185.110.132.75
iptables -I INPUT 105 -s 185.110.132.0/24 -j DROP
# 186.39.40.87
iptables -I INPUT 106 -s 186.39.0.0/16 -j DROP
# 186.62.179.163
iptables -I INPUT 107 -s 186.60.0.0/24 -j DROP
# 186.125.157.46
iptables -I INPUT 108 -s 186.124.0.0/15 -j DROP
iptables -I INPUT 109 -s 186.125.157.40/29 -j DROP
# 186.226.66.22
iptables -I INPUT 110 -s 186.226.64.0/20 -j DROP
iptables -I INPUT 111 -s 186.226.66.0/24 -j DROP
# 186.226.208.250
iptables -I INPUT 112 -s 186.226.208.0/21 -j DROP
# 187.157.170.18
iptables -I INPUT 113 -s 187.144.0.0/12 -j DROP
iptables -I INPUT 114 -s 187.157.0.0/16 -j DROP
# 188.34.168.158
iptables -I INPUT 115 -s 188.34.160.0/20 -j DROP
# 188.232.145.67
iptables -I INPUT 116 -s 188.232.144.0/22 -j DROP
# 189.211.124.188
iptables -I INPUT 117 -s 189.211.64.0/18 -j DROP
iptables -I INPUT 118 -s 189.210.0.0/15 -j DROP
# 190.49.126.63
iptables -I INPUT 119 -s 190.49.0.0/16 -j DROP
# 190.122.7.126
iptables -I INPUT 120 -s 190.122.7.0/25 -j DROP
# 190.179.205.124
iptables -I INPUT 121 -s 190.178.0.0/15 -j DROP
# 191.7.66.164
iptables -I INPUT 122 -s 191.7.64.0/21 -j DROP
iptables -I INPUT 123 -s 191.7.64.0/22 -j DROP
# 191.80.211.123
iptables -I INPUT 124 -s 191.80.0.0/14 -j DROP
# 191.205.248.38
iptables -I INPUT 125 -s 191.204.0.0/14 -j DROP
# 192.69.94.169
iptables -I INPUT 126 -s 192.69.88.0/21 -j DROP
# 192.99.28.69
iptables -I INPUT 127 -s 192.99.28.64/28 -j DROP
# 193.201.225.24
# 193.201.225.30
# 193.201.227.1
# 193.201.227.124
iptables -I INPUT 128 -s 193.201.224.0/22 -j DROP
# 195.154.56.55
iptables -I INPUT 129 -s 195.154.0.0/16 -j DROP
# 198.251.59.147
iptables -I INPUT 130 -s 198.251.48.0/20 -j DROP
# 200.94.70.26
iptables -I INPUT 131 -s 200.94.0.0/17 -j DROP
iptables -I INPUT 132 -s 200.94.64.0/19 -j DROP
# 203.122.27.34
iptables -I INPUT 133 -s 203.122.27.0/24 -j DROP
# 211.142.193.36
iptables -I INPUT 134 -s 211.142.128.0/17 -j DROP
# 212.83.134.168
iptables -I INPUT 135 -s 212.83.128.0/19 -j DROP
# 212.83.162.68
iptables -I INPUT 136 -s 212.83.160.0/19 -j DROP
# 212.84.160.184
iptables -I INPUT 137 -s 212.84.160.0/19 -j DROP
# 212.129.26.190
iptables -I INPUT 138 -s 212.129.0.0/18 -j DROP
# 213.174.22.114
iptables -I INPUT 139 -s 213.174.22.0/24 -j DROP
# 216.104.196.254
iptables -I INPUT 140 -s 216.104.192.0/20 -j DROP
# 217.77.221.85
iptables -I INPUT 141 -s 217.77.216.0/21 -j DROP
# 217.115.232.165
iptables -I INPUT 142 -s 217.115.224.0/20 -j DROP
# 217.172.189.102
iptables -I INPUT 143 -s 217.172.189.0/24 -j DROP
# 218.93.206.21
iptables -I INPUT 144 -s 218.93.0.0/16 -j DROP
# 218.94.38.216
iptables -I INPUT 145 -s 218.94.0.0/16 -j DROP
# 221.203.3.104
iptables -I INPUT 146 -s 221.200.0.0/14 -j DROP
# 221.207.21.94
iptables -I INPUT 147 -s 221.207.0.0/18 -j DROP
# 222.255.174.40
iptables -I INPUT 148 -s 222.255.160.0/19 -j DROP
# 223.25.233.46
iptables -I INPUT 149 -s 223.25.233.0/24 -j DROP
# 80.87.205.246
iptables -I INPUT 150 -s 80.87.205.0/24 -j DROP
# 86.53.112.194
iptables -I INPUT 151 -s 86.53.0.0/16 -j DROP
# 52.79.157.217
iptables -I INPUT 152 -s 52.64.0.0/12 -j DROP
iptables -I INPUT 153 -s 52.79.0.0/16 -j DROP
# 93.119.61.106
iptables -I INPUT 154 -s 93.119.32.0/19 -j DROP
# 2.178.124.192
iptables -I INPUT 155 -s 2.178.0.0/16 -j DROP
# 5.237.66.12
iptables -I INPUT 156 -s 5.237.64.0/19 -j DROP
# 194.44.244.32
iptables -I INPUT 157 -s 194.44.244.0/24 -j DROP
# 125.25.226.116
iptables -I INPUT 158 -s 125.25.224.0/19 -j DROP
# 62.241.35.226
iptables -I INPUT 159 -s 62.241.32.0/16 -j DROP
# 188.123.219.200
iptables -I INPUT 160 -s 188.123.192.0/19 -j DROP
# 201.73.206.214
iptables -I INPUT 161 -s 201.72.0.0/15 -j DROP
iptables -I INPUT 162 -s 201.73.206.0/24 -j DROP
# 86.105.53.74
iptables -I INPUT 163 -s 86.105.52.0/22 -j DROP
# 91.99.68.202
iptables -I INPUT 164 -s 91.99.64.0/20 -j DROP
# 2.176.20.199
iptables -I INPUT 165 -s 2.176.0.0/16 -j DROP
# 104.196.27.187
iptables -I INPUT 166 -s 104.196.0.0/14 -j DROP
# 80.148.4.58
iptables -I INPUT 167 -s 80.144.0.0/13 -j DROP
# 177.101.135.154
iptables -I INPUT 168 -s 177.101.128.0/20 -j DROP
iptables -I INPUT 169 -s 177.101.135.0/24 -j DROP
# 151.235.134.31
iptables -I INPUT 170 -s 151.0.0.0/8 -j DROP
iptables -I INPUT 171 -s 151.235.128.0/18 -j DROP
# 99.235.158.122
iptables -I INPUT 172 -s 99.224.0.0/11 -j DROP
iptables -I INPUT 173 -s 99.235.158.0/23 -j DROP
# 185.81.157.225
iptables -I INPUT 174 -s 185.81.156.0/22 -j DROP
# 212.19.136.110
iptables -I INPUT 175 -s 212.19.136.0/24 -j DROP
# 188.210.118.209
iptables -I INPUT 176 -s 188.210.96.0/19 -j DROP
# 186.57.158.242
iptables -I INPUT 177 -s 186.57.0.0/16 -j DROP
# 148.216.14.87
iptables -I INPUT 178 -s 148.201.0.0/16 -j DROP
iptables -I INPUT 179 -s 148.202.0.0/15 -j DROP
iptables -I INPUT 180 -s 148.204.0.0/14 -j DROP
iptables -I INPUT 181 -s 148.208.0.0/12 -j DROP
iptables -I INPUT 182 -s 148.216.0.0/16 -j DROP
iptables -I INPUT 183 -s 148.224.0.0/12 -j DROP
iptables -I INPUT 184 -s 148.240.0.0/13 -j DROP
iptables -I INPUT 185 -s 148.248.0.0/15 -j DROP
iptables -I INPUT 186 -s 148.250.0.0/16 -j DROP
# 67.210.97.12
iptables -I INPUT 187 -s 67.210.96.0/19 -j DROP
# 86.104.103.194
iptables -I INPUT 188 -s 86.104.96.0/20 -j DROP
# 158.69.126.144
iptables -I INPUT 189 -s 158.69.0.0/16 -j DROP
# 37.49.226.122
iptables -I INPUT 190 -s 37.49.226.0/24 -j DROP
# 65.92.75.233
iptables -I INPUT 191 -s 65.92.0.0/14 -j DROP
iptables -I INPUT 192 -s 65.92.72.0/22 -j DROP
# 191.84.215.135
iptables -I INPUT 193 -s 191.84.0.0/15 -j DROP
# 45.32.15.243
iptables -I INPUT 194 -s 45.32.0.0/16 -j DROP
iptables -I INPUT 195 -s 45.32.14.0/23 -j DROP
# 74.208.44.111
iptables -I INPUT 196 -s 74.208.0.0/16 -j DROP
# 63.154.117.168
iptables -I INPUT 197 -s 63.152.0.0/13 -j DROP
# 59.183.25.35
iptables -I INPUT 198 -s 59.183.16.0/20 -j DROP
# 46.119.127.209
iptables -I INPUT 199 -s 46.119.112.0/20 -j DROP
# 200.29.235.82
iptables -I INPUT 200 -s 200.29.235.80/28 -j DROP
# 87.249.204.63
iptables -I INPUT 201 -s 87.249.204.0/24 -j DROP
# 104.250.188.168
iptables -I INPUT 202 -s 104.250.160.0/19 -j DROP
# 62.57.98.189
iptables -I INPUT 203 -s 62.57.96.0/22 -j DROP
# 204.12.248.115
iptables -I INPUT 204 -s 204.12.192.0/18 -j DROP
iptables -I INPUT 205 -s 204.12.248.96/27 -j DROP
# 195.3.144.98
iptables -I INPUT 206 -s 195.3.144.0/22 -j DROP
# 179.39.18.223
iptables -I INPUT 207 -s 179.36.0.0/14 -j DROP
# 61.160.23.222
iptables -I INPUT 208 -s 61.160.0.0/16 -j DROP
# 101.200.190.59
iptables -I INPUT 209 -s 101.200.0.0/15 -j DROP
# 117.3.36.65
iptables -I INPUT 210 -s 117.0.0.0/13 -j DROP
# 93.174.93.26
iptables -I INPUT 211 -s 93.174.88.0/21 -j DROP
# 62.75.230.134
iptables -I INPUT 212 -s 62.75.128.0/17 -j DROP
# 190.48.4.43
iptables -I INPUT 213 -s 190.48.0.0/16 -j DROP
# 83.219.139.9
iptables -I INPUT 214 -s 83.219.128.0/19 -j DROP
# 93.174.93.26
iptables -I INPUT 215 -s 93.174.88.0/21 -j DROP
