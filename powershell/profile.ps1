# PowerShell Setting
# 2024-01-05 by JKLEE.

# Alias
Set-Alias ll dir
Set-Alias vim nvim 
Set-Alias vi vim 

#new-item alias:vim -value gvim

function cdsrc { set-location $HOME\Source }
function cdmemo { set-location $HOME\MEMO }
function cdenv  { set-location $HOME\.config }
function psrc { vim  $HOME\.config\powershell\profile.ps1 }
function vimrc { vim $HOME\.config\nvim/init.vim }
Clear-Host
