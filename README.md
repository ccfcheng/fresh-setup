# Dotfiles and Vim Config

## New System Setup

First, install Xcode. Then, install Homebrew:
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Next, install git and clone down the repo. Then, copy all files into home directory:
```
brew install git

git clone https://github.com/ccfcheng/fresh-setup

cp -r ~/fresh-setup/. ~ && rm -rf ~/fresh-setup
```

Setup your `.bash_profile` to source the appropriate dotfiles. Then, run `.new-install.sh` to let Homebrew and Cask install program list.

After that is finished, run `.vim-setup.sh` to download all appropriate Vim plugins.

Add the following to your `.bash_profile` after `bash-completion` has been installed:
```
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi
```

See the [Homebrew Completions Repo](https://github.com/Homebrew/homebrew-completions) for more info.

Add bash completion for Docker by doing the following, or install from Homebrew:
```
cd /usr/local/etc/bash_completion.d
ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion
```

Finally, do the appropriate SSH key setup in Github and clone down needed repos for work.
