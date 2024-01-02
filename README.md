# dotfiles


## Oh_my_zsh update
omz update


## Vim plugin
https://github.com/junegunn/vim-plug

curl -fLo ~/.vim/autoload/plug.vim --create-dirs ; https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


----
mkdir ~/.config/powershell
nvim ~/.config/powershell/user_profile.ps1

```
#alias
Set-Alias vim nvim
```


nvim $PROFILE.CurrentUserCurrentHost
```
. $env:USERPROFILE\.config\powershell\user_profile.ps1
```


 :echo stdpath('config') 
없으면 만들어라. 

mkdir  ~/AppData/Local/nvim
## plugin 설치 ( 관리자 권한 )
- 순서대로 명령어 실행 
```
mkdir ~\AppData\Local\nvim\autoload
$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile(
  $uri,
  $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
    "~\AppData\Local\nvim\autoload\plug.vim"
  )
)
```


