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
function cdsrc { set-location C:\Dropbox\Source }
function vimrc  { vim C:\Dropbox\ENV\vim\vimrc_win.vim  }
Clear-Host
