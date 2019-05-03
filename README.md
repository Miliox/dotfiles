# README

Collection of dotfiles and configuration for a variety of tools I use.

## TMUX

To configure tmux run the commands below.

```shell
# Mac OS
brew install tmux

# Linux (Debian based)
sudo apt-get install tmux

cd <repo>
git submodule update --init

cd ${HOME}
ln -s -f <repo>/.tmux/.tmux.conf
cp <repo>/.tmux/.tmux.conf.local ${HOME}
```
