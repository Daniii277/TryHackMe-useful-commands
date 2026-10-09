#NSLOOKUP :  looks up the IP address of a domain from the command line
nslookup www.example.com

# Result --------------------------------------------
Server:         127.0.0.53
Address:        127.0.0.53#53

Non-authoritative answer:
Name:   www.example.com
Address: 93.184.215.14
Name:   www.example.com
Address: 2606:2800:21f:cb07:6820:80da:af6b:8b2c
#----------------------------------------------------

#Packets sent for DNS query -------------------------
1 0.000000000 192.168.66.89 → 192.168.66.1 DNS 86 Standard query 0x2e0f A www.example.com OPT
2 0.059049584 192.168.66.1 → 192.168.66.89 DNS 102 Standard query response 0x2e0f A www.example.com A 93.184.215.14 OPT
3 0.059721705 192.168.66.89 → 192.168.66.1 DNS 86 Standard query 0x96e1 AAAA www.example.com OPT
4 0.101568276 192.168.66.1 → 192.168.66.89 DNS 114 Standard query response 0x96e1 AAAA www.example.com AAAA 2606:2800:21f:cb07:6820:80da:af6b:8b2c OPT
# ---------------------------------------------------

#WHOIS : provides information about the entity that registered a domain name, including name, phone number, email, and address. (Data is changed by word REDACTED)
whois [REDACTED].com

#Result ---------------------------------------------
[...]
Domain Name: [REDACTED].COM
Registry Domain ID: [REDACTED]
Registrar WHOIS Server: whois.godaddy.com
Registrar URL: https://www.godaddy.com
Updated Date: 2017-07-05T16:02:43Z
Creation Date: 1993-04-02T00:00:00Z
Registrar Registration Expiration Date: 2026-10-20T14:56:17Z
Registrar: GoDaddy.com, LLC
Registrar IANA ID: 146
Registrar Abuse Contact Email: abuse@godaddy.com
Registrar Abuse Contact Phone: +1.4806242505
[...]
Registrant Name: Registration Private
Registrant Organization: Domains By Proxy, LLC
Registrant Street: DomainsByProxy.com
[...]
#----------------------------------------------------

#FTP : Designed to transfer files
ftp 10.130.180.79

#Result ---------------------------------------------
Connected to 10.130.180.79.
220 (vsFTPd 3.0.5)
Name (10.130.180.79:root): anonymous
331 Please specify the password.
Password: 
230 Login successful.
Remote system type is UNIX.
Using binary mode to transfer files.
ftp> ls
229 Entering Extended Passive Mode (|||23818|)
150 Here comes the directory listing.
-rw-r--r--    1 0        0            1480 Jun 27  2024 coffee.txt
-rw-r--r--    1 0        0              14 Jun 27  2024 flag.txt
-rw-r--r--    1 0        0            1595 Jun 27  2024 tea.txt
226 Directory send OK.
ftp> type ascii
200 Switching to ASCII mode.
ftp> get flag.txt
local: flag.txt remote: flag.txt
229 Entering Extended Passive Mode (|||34196|)
150 Opening BINARY mode data connection for flag.txt (14 bytes).
100% |********************************|    14       73.11 KiB/s    00:00 ETA
226 Transfer complete.
WARNING! 1 bare linefeeds received in ASCII mode.
File may not have transferred correctly.
14 bytes received in 00:00 (12.55 KiB/s)
ftp> quit
221 Goodbye.
#--------------------------------------------------

#SMTP : Defines how a mail client talks with a mail server and how a mail server talks with another
telnet 10.130.129.207 25

#Result -------------------------------------------
Trying 10.130.129.207...
Connected to 10.130.129.207.
Escape character is '^]'.
220 example.thm ESMTP Exim 4.95 Ubuntu Thu, 27 Jun 2024 16:18:09 +0000
HELO client.thm
250 example.thm Hello client.thm [10.11.81.126]
MAIL FROM: <user@client.thm>
250 OK
RCPT TO: <strategos@server.thm>
250 Accepted
DATA
354 Enter message, ending with "." on a line by itself
From: user@client.thm
To: strategos@server.thm
Subject: Telnet email

Hello. I am using telnet to send you an email!
.
250 OK id=1sMrpq-0001Ah-UT
QUIT
221 example.thm closing connection
Connection closed by foreign host.
#--------------------------------------------------

#POP3 : Allow the client to communicate with a mail server and retrieve email messages
telnet 10.130.129.207 110

#Result -------------------------------------------
Trying 10.130.129.207...
Connected to 10.130.129.207.
Escape character is '^]'.
+OK [XCLIENT] Dovecot (Ubuntu) ready.
AUTH
+OK
PLAIN
.
USER name
+OK
PASS password
+OK Logged in.
STAT
+OK 4 2216
LIST
+OK 4 messages:
1 690
2 589
3 483
4 454
.
RETR 4
+OK 454 octets
Return-path: <user@client.thm>
Envelope-to: name@server.thm
Delivery-date: Thu, 12 Sep 2024 20:12:42 +0000
Received: from [10.11.81.126] (helo=client.thm)
	by example.thm with smtp (Exim 4.95)
	(envelope-from <user@client.thm>)
	id 1soqAj-0007li-39
	for linda@server.thm;
	Thu, 12 Sep 2024 20:12:42 +0000
From: user@client.thm
To: name@server.thm
Subject: Your Flag

Hello!
Here's your flag:
THM{TELNET_RETR_EMAIL}
Enjoy your journey!
.
QUIT
+OK Logging out.
Connection closed by foreign host.
'
#------------------------------------------------


# IMAP : One solution to maintaining a synchronized mailbox across multiple devices.
telnet 10.10.41.192 143

#Result -----------------------------------------
Trying 10.10.41.192...
Connected to 10.10.41.192.
Escape character is '^]'.
* OK [CAPABILITY IMAP4rev1 SASL-IR LOGIN-REFERRALS ID ENABLE IDLE LITERAL+ STARTTLS AUTH=PLAIN] Dovecot (Ubuntu) ready.
A LOGIN strategos
A OK [CAPABILITY IMAP4rev1 SASL-IR LOGIN-REFERRALS ID ENABLE IDLE SORT SORT=DISPLAY THREAD=REFERENCES THREAD=REFS THREAD=ORDEREDSUBJECT MULTIAPPEND URL-PARTIAL CATENATE UNSELECT CHILDREN NAMESPACE UIDPLUS LIST-EXTENDED I18NLEVEL=1 CONDSTORE QRESYNC ESEARCH ESORT SEARCHRES WITHIN CONTEXT=SEARCH LIST-STATUS BINARY MOVE SNIPPET=FUZZY PREVIEW=FUZZY PREVIEW STATUS=SIZE SAVEDATE LITERAL+ NOTIFY SPECIAL-USE] Logged in
B SELECT inbox
* FLAGS (\Answered \Flagged \Deleted \Seen \Draft)
* OK [PERMANENTFLAGS (\Answered \Flagged \Deleted \Seen \Draft \*)] Flags permitted.
* 4 EXISTS
* 0 RECENT
* OK [UNSEEN 2] First unseen.
* OK [UIDVALIDITY 1719824692] UIDs valid
* OK [UIDNEXT 5] Predicted next UID
B OK [READ-WRITE] Select completed (0.001 + 0.000 secs).
C FETCH 3 body[]
* 3 FETCH (BODY[] {445}
Return-path: <user@client.thm>
Envelope-to: strategos@server.thm
Delivery-date: Thu, 27 Jun 2024 16:19:35 +0000
Received: from [10.11.81.126] (helo=client.thm)
        by example.thm with smtp (Exim 4.95)
        (envelope-from <user@client.thm>)
        id 1sMrpq-0001Ah-UT
        for strategos@server.thm;
        Thu, 27 Jun 2024 16:19:35 +0000
From: user@client.thm
To: strategos@server.thm
Subject: Telnet email

Hello. I am using telnet to send you an email!
)
C OK Fetch completed (0.001 + 0.000 secs).
D LOGOUT
* BYE Logging out
D OK Logout completed (0.001 + 0.000 secs).
Connection closed by foreign host.
#------------------------------------------------