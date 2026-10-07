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