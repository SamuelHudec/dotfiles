# Dotfiles

How to save your favorite configuration with less pain? Of how to migrate to new device? This repo serve only for my dotfiles, you can take it as inspiration to create your one.

After researching the internet and discussing with a friend, I decided to use `stow`. Simply, I found as useful [this blog](https://www.jakewiesler.com/blog/managing-dotfiles#understanding-stow) or [this one](https://venthur.de/2021-12-19-managing-dotfiles-with-stow.html). But you can find much more inspiration for starting with.

## Create a new simlink using stow

Once, you have `stow` instaled lets create a simlink using steps:
1. Your working directory must be your dotfile repo
2. Create a new "package" (folder) in your dotfile repo eg. `mkdir package`. This si place where you will store dotfile(s)
3. Make a simlink! `stow package` Yeah! that simple it is. 

notes:
- its good for begining to place your dotfile repo in home directory. That makes my stowing easier because I dont need to specify "anything".
- packages name by real name eg. zsh, git, etc 

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
if you want to delete simlink run
```bash
stow -vDt ~ git zsh
```

Fifth, clone repositories with extra plugins, that do not contain the base ohmyzsh repo
```bash
scripts/ohmyzsh_plugins.sh
```