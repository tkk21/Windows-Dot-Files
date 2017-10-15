echo "Welcome to PowerShell: $env:Username"

# To edit the Powershell Profile
Function Edit-Profile
{
    vim $profile
}

# To edit Vim settings
Function Edit-Vimrc
{
    vim $HOME\_vimrc
}

Function Elevate-Powershell
{
    Start-Process powershell -verb runas
}

#Set-ExecutionPolicy RemoteSigned

# custom variables
$Hosts = "C:\Windows\System32\drivers\etc\hosts"

# custom Aliases
set-alias open ii
set-alias grep select-string

# custom application Aliases
set-alias vim "C:/Program Files (x86)/Vim/vim80/./vim.exe"
set-alias chrome "C:/Program Files (x86)/Google/Chrome/Application/./chrome.exe"
set-alias su Elevate-Powershell 
set-alias ll ls
set-alias l ls
set-alias scp pscp.exe
set-alias ssh plink.exe

# Bash-like tab completion
Set-PSReadlineKeyHandler -Key Tab -Function Complete

# Import my volume library
#Import-Module -Name ~/scripts/Set-SpeakerVolume.psm1 -WarningAction SilentlyContinue
