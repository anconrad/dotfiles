### PreReq
Have a Linux with apt and git ssh setup

### Usage
install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) as a user
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

clone this repository into ~/.dotfiles
```bash
git clone git@github.com:anconrad/dotfiles.git ~/.dotfiles
```

run bootstrap.sh as a user
```bash
~/.dotfiles/bootstrap.sh
```

change to root and set zsh as default shell
```bash
sudo su
chsh -s $(which zsh) root
```

---
[download and install jet brains mono font](https://www.jetbrains.com/lp/mono/)

https://blog.danskingdom.com/Update-your-terminal-prompt-and-font-in-Windows-Terminal-and-VS-Code-and-Visual-Studio/