# PowerShell Setting
# 2024-01-05 by JKLEE.

# Alias
Set-Alias ll dir
Set-Alias vim nvim 
Set-Alias vi vim 

#new-item alias:vim -value gvim
function cdgo   { set-location C:\Dropbox\Source\go-Project }
function cdenv  { set-location C:\Dropbox\ENV }
function cdtool { set-location C:\Dropbox\TOOL }

function cdsrc { set-location C:\Users\taein\Source }
function cdmemo { set-location C:\Users\taein\MEMO }
function cdenv  { set-location C:\Users\taein\.config }
function psrc { vim C:\Users\taein\.config\powershell\profile.ps1 }
function vimrc { vim C:\Users\taein\.config\nvim/init.vim }
Clear-Host
