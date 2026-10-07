#Lists all available cmdlets, functions, aliases and scripts that can be executed in the current Powershell
Get-Command /   Get-Command -CommandType "Function"

#Details info about cmdlets
Get-Help Get-Date

#Lists all aliases available
Get-Alias

#Searchs for modules in online repositories (Using pattern* with * as a wildcard)
Find-Module -Name "PowerShell*"

#Downloads a module from the repository
Install-Module "PowerShellGet"

#Lists the files and directories in a location
ls  /   Get-ChildItem   /   dir

#Navigates to a different directory
cd  /   Set-Location

#Creates new items
New-Item -Path ".\captain-cabin\captain-wardrobe" -ItemType "Directory"
New-Item -Path ".\captain-cabin\captain-wardrobe\captain-boots.txt" -ItemType "File"

#Removes both directories and files, whereas in Windows CLI we have separate commands rmdir and del
Remove-Item -Path ".\captain-cabin\captain-wardrobe\captain-boots.txt"
Remove-Item -Path ".\captain-cabin\captain-wardrobe" 

#Copies or moves files and directories
Copy-Item -Path .\captain-cabin\captain-hat.txt -Destination .\captain-cabin\captain-hat2.txt   /   copy
Move-Item -Path .\captain-cabin\captain-hat.txt -Destination .\captain-cabin\captain-hat2.txt   /   move

#Displays the content of a file
Get-Content -Path ".\captain-hat.txt"   /   type captain-hat.txt    /   cat captain-hat.txt

#Pipe, filter and sort data

#The operator | is used to use the output of a cmdlet as input of another cmdlet
#The command Where-object filters the output of the first cmdlet
#The command Sort-Object sorts the result
Get-ChildItem | Where-Object -Property "Extension" -eq ".txt" | Sort-Object Length
#The command Select-Object is used to select specific properties from objects
Get-ChildItem | Select-Object Name,Length 


#Gets system info
Get-ComputerInfo

#Lists all the local user accounts on the system
Get-LocalUser

#Provides detailed information about the network interfaces on the system
Get-NetIPConfiguration

#Shows details for all IP addresses configured on the system
Get-NetIPAddress

#Provides a detailed view of all currently running processes
Get-Process

#Allows the retrieval of information about the status of services on the machine
Get-Service

#Displays current TCP connections
Get-NetTCPConnection

# generates file hashes
Get-FileHash -Path .\my_file.txt

#Executes commands on remote systems
Invoke-Command -FilePath c:\scripts\test.ps1 -ComputerName Server01
Invoke-Command -ComputerName Server01 -Credential Domain01\User01 -ScriptBlock { Get-Culture }
