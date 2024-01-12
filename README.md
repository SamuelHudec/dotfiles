# Dotfiles

How to save your favorite configuration with less pain? Of how to migrate to new device?

After researching the internet and discussing with a friend, I decided to use `stow`. Simply I found as useful [this blog](https://www.jakewiesler.com/blog/managing-dotfiles#understanding-stow) or [this one](https://venthur.de/2021-12-19-managing-dotfiles-with-stow.html). But you can find much more inspiration for starting with.

First you have to isntall [homebrew](https://brew.sh/), simply using:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Second, clone this repo to your __home directory__ install all packages using:
```bash
xargs brew install < homebrew.txt
```

Third install [oh-my-zsh](https://ohmyz.sh/)
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```