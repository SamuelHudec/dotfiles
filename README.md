# Dotfiles

How to save your favorite configuration with less pain? Of how to migrate to new device? This repo serve only for my dotfiles, you can take it as inspiration to create your one.

After researching the internet and discussing with a friend, I decided to use `stow`. Simply, I found as useful [this blog](https://www.jakewiesler.com/blog/managing-dotfiles#understanding-stow) or [this one](https://venthur.de/2021-12-19-managing-dotfiles-with-stow.html). But you can find much more inspiration for starting with.

## New computer

First, you have to isntall [homebrew](https://brew.sh/), simply using:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Second, clone this repo to your __home directory__ install all packages using:
```bash
xargs brew install < homebrew.txt
```

Third, install [oh-my-zsh](https://ohmyz.sh/)
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Forth, make simlinks to this repo dotfiles
```bash
stow -vSt ~ git zsh
```

Fifth, clone repositories with extra plugins, that do not contain the base ohmyzsh repo
```bash
git clone https://github.com/paulirish/git-open.git $ZSH_CUSTOM/plugins/git-open
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```