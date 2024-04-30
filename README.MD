### Usage
- 1) install prereqs
```bash
apt install git curl zsh
```

- 2) install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) as a user
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

clone this repository into ~/git-repos/dotfiles (or ~/.dotfiles)
```bash
mkdir -p ~/git-repos/dotfiles
git clone https://github.com/anconrad/dotfiles.git ~/git-repos/dotfiles
```

run bootstrap.sh as a user
```bash
~/git-repos/dotfiles/bootstrap.sh
```

change to root and set zsh as default shell
```bash
sudo su
chsh -s $(which zsh) root
```

---
[download and install jet brains mono font](https://www.jetbrains.com/lp/mono/)

https://blog.danskingdom.com/Update-your-terminal-prompt-and-font-in-Windows-Terminal-and-VS-Code-and-Visual-Studio/
