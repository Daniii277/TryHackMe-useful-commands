#NMAP

#Scanning a local/remote network
nmap -sn 192.168.66.0/24

#Lists the 256 targets that will be scanned. This option helps confirm the targets before running the actual scan.
nmap -sL 192.168.66.0/24

#Tries to complete the TCP three-way handshake with every target TCP port. If the TCP port turns out to be open and Nmap connects successfully, Nmap will tear down the established connection.
nmap -sT 192.168.124.148

#Executes the first step: it sends a TCP SYN packet. Consequently, the TCP three-way handshake is never completed.
nmap -sS 192.168.124.148

#Scanning UDP ports
nmap -sU 192.168.124.148

#Scans the 100 most common ports (Fast mode)
nmap -F 192.168.124.148

# Specify a range of ports to scan
nmap -p1-1000 192.168.124.148

#OS detection
nmap -O 192.168.124.148

#Service and version detection
nmap -sV 192.168.124.148

#OS detection, version detection, and other additions
nmap -A 192.168.124.148

#Scan hosts ports that appear to be down
nmap -Pn 192.168.124.148