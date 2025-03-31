# dotfiles

## MAC
### vim
cd $HOME
git clone https://github.com/taein2301/dotfiles.git
ln -s $HOME/dotfiles/vim/vimrc ~/.vimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

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

# PowerShell

## Profile 파일 확인.

```powershell
$PROFILE | select *
-- RESULT
AllUsersAllHosts       : C:\Windows\System32\WindowsPowerShell\v1.0\profile.ps1
AllUsersCurrentHost    : C:\Windows\System32\WindowsPowerShell\v1.0\Microsoft.PowerShell_profile.ps1
CurrentUserAllHosts    : C:\Users\jklee\Documents\WindowsPowerShell\profile.ps1
CurrentUserCurrentHost : C:\Users\jklee\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
Length                 : 75
```

## Profile 파일이 있는지확인
```powershell
Test-Path $profile.CurrentUserAllHosts
-- RESULT
False <--- False 면 파일 없음.  > 신규로 생성

echo $profile.CurrentUserAllHosts
C:\Users\jklee\Documents\WindowsPowerShell\profile.ps1
-- 결과로 디렉토리 만들기
mkdir  C:\Users\taein\Documents\WindowsPowerShell
```
## Profile 수정 권한
관리자 권한으로 터미널 열고

``` powershell
ExecutionPolicy

-- RESULT
 `Restricted`  면 스크립트가 막힌 상태

-- 아래의 명령어 쳐서 제한 풀기
Set-ExecutionPolicy Unrestricted

ExecutionPolicy
Unrestricted           <-- 모든 스크립트 허용 상태
```

## Profile file link 걸기 ( github )
```
-- HOME 에서 실행
git pull https://github.com/taein2301/dotfiles.git .config

New-item -itemType SymbolicLink -path $profile.CurrentUserAllHosts -target "C:\Users\taein\.config\powershell\profile.ps1"
```

# windows nvim
## config 위치 확인
vim cmd mode 에서 아래 명령으로 config 위치 확인
 :echo stdpath('config')
없으면 만들어라.

## Profile file link 걸기 ( github )
```
-- nvim config
New-item -itemType SymbolicLink -path "C:\Users\taein\AppData\Local\nvim\init.vim" -target "C:\Users\taein\.config\nvim/init.vim"
```

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
