
::Current user
whoami

::Checks paths in terminal
set

::Operative system version
ver 

::Lists various information about the system such as OS information, system details, processor and memory
systeminfo

::Displays a list of installed device drivers. using | more displays page by page
driverquery

::Checks network information. Also you can use /all for more information
ipconfig

::Checks internet connection sending a ICMP packet to the target
ping example.com / ping 8.8.8.8

::Traces network route traversed to reach the target
tracert example.com / tracert 8.8.8.8

::Looks up a host or domain and returns its IP address
nslookup

::Displays current network connections and listening ports
netstat

::Displays the current drive and directory
cd

::Shows the child directories / Also shows hidden system files / Displays also the subdirectories
dir |   dir /a  |   dir /s     

::Represents the child directories and subdirectories
tree

::Creates a directory
mkdir directory_name

::Delete a directory
rmdir directory_name

::Views text files
type

::Copies files from one location to another
copy test.txt test2.txt

::Moves files
move test.txt ..\Documents

::Deletes files
del test.txt    |   erase *.md C:\Documents

::Lists the running processes / filter image
tasklist    |   tasklist /FI "imagename eq sshd.exe"

::Terminate a task
taskkill /PID 1234

::Scans system files for corruption and repairs them if possible
sfc /scannow

::Checks the file system and disk volumes for errors and bad sectors
chkdsk

:: Shuts down the system
shutdown /s

::Restarts the system
shutdown /r
