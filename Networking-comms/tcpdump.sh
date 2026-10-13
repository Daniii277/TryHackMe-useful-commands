#TCPDUMP

#Shows available network interfaces to listen
ip a s

####    Useful comms    ####

#Captures packets on a specific network interface
tcpdump -i INTERFACE

#Writes captured packets to a file
tcpdump -w FILE

#Reads captured packets from a file
tcpdump -r FILE

#Captures a specific number of packets
tcpdump -c COUNT

#Don’t resolve IP addresses
tcpdump -n

#Don’t resolve IP addresses and don’t resolve protocol numbers
tcpdump -nn

#Verbose display; verbosity can be increased with -vv and -vvv
tcpdump -v

#Example : Listen eth0 inetrface, limited to 50 packets and verbose display
tcpdump -i eth0 -c 50 -v

#Filters packets by host
tcpdump host example.com -w http.pcap

#Filters packets by source
tcpdump dst 127.0.0.1 -w example.pcap

#Filters by port
tcpdump -i ens5 port 53 -n

#Filters by protocol
tcpdump -i ens5 icmp -n

#Logical operations allowed
tcpdump host 1.1.1.1 and tcp
tcpdump udp or icmp
tcpdump not tcp

#Filters by packet length
tcpdump greater 50
tcpdump less 20

#TCP filters

#Filters by flag
#to capture TCP packets with only the SYN (Synchronize) flag set, while all the other flags are unset.
tcpdump "tcp[tcpflags] == tcp-syn"
#to capture TCP packets with at least the SYN (Synchronize) flag set.
tcpdump "tcp[tcpflags] & tcp-syn != 0"
#to capture TCP packets with at least the SYN (Synchronize) or ACK (Acknowledge)
tcpdump "tcp[tcpflags] & (tcp-syn|tcp-ack) != 0"

#Display options

#Quick and quite: brief packet information
tcpdump -q

#Include MAC addresses
tcpdump -e

#Print packets as ASCII encoding
tcpdump -A

#Display packets in hexadecimal format
tcpdump -xx

#Show packets in both hexadecimal and ASCII formats
tcpdump -X