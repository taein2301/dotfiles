# JKLEE 환경 설정

- Mac / Linux / Windows 의 bash / zsh / vim 설정
- Linux 는 기존 사용자는 영향이 없어야 한다.

----------------------------------------------------------------------------------------------------
## MAC

### Linux
.jklee 로 디렉토리 만들고 git으로 설정 파일 clone
접속 할때 iterm 설정에 `source /NOCS/pfnm/.jklee/bash/bashrc_comm` 넣어준다.

```
mkdir -p ~/user/jklee
cd ~/user/jklee
git clone https://github.com/taein2301/env.git
source ~/user/jklee/env/bash/bashrc_comm
ln -s $JKLEE_HOME/env/vim/colors ~/.vim/colors
cd ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim 열고
:PlugInstall
```

## Windows
setting $JKLEE_HOME

## shell
cd /Users/jklee/Dropbox/ENV

### oh-my-zsh 설치
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
> 터미널 제접속

rm -rf ~/.zshrc
ln -s /Users/jklee/Dropbox/ENV/Zsh/zshrc ~/.zshrc
ln -s /Users/jklee/Dropbox/ENV/vim/vimrc ~/.vimrc
ln -s /Users/jklee/Dropbox/ENV/vim/ ~/.vim

ln -s /Users/jklee/Dropbox/ENV/ackrc ~/.ackrc


# Windows MSYS2 bash Setting
Windows 설정은 DropBox 가 연동 되어 있기 때문에 git clone 말고 DropBox 파일을 link 해서 사용한다.

## soft link 생성 되도록 설정
export MSYS=winsymlinks:nativestrict

## link 설정
cd /c/Users/jklee/Dropbox/ENV
ln -s /c/Users/jklee/Dropbox/ENV/Bash/bashrc_comm  ~/.bashrc
ln -s /c/Users/jklee/Dropbox/ENV/vim/vimrc ~/.vimrc
ln -s /c/Users/jklee/Dropbox/ENV/vim ~/.vim

# Windows Gvim 설정
```
ln -s /c/Users/jklee/Dropbox/ENV/vim ~/vimfiles
ln -s /c/Users/jklee/Dropbox/ENV/vim/vimrc ~/_vimrc
```

# Windows Powershell Link 설정

관리자 모드로 실행

New-item -itemType SymbolicLink -path "C:\Users\jklee\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1" -target "C:\Dropbox\ENV\PowerShell\Microsoft.PowerShell_profile.ps1"

Last Modify : `2020-10-29`
