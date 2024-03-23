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