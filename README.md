#  npm Oh-My-ZSH plugin

npm aliases & command completion

##  Description

This plugin provides shortcuts for common npm commands and enables npm completion. 

_Originally based on [the default Oh-My-ZSH npm plugin](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/npm)._

##  Usage

Read [plugin file](npm.plugin.zsh), learn aliases and use it rest of your life.

##  Installation

Create folder inside your Oh-My-ZSH directory with custom plugins. Copy plugin files to it. Activate it in your ZSH config file. Usually it looks like:

```
cd ~/.oh-my-zsh/custom/plugins/
git clone git@github.com:igoradamenko/npm.plugin.zsh.git npm
vim ~/.zshrc
```

In opened file find array `plugins` and add `npm` in it (or add whole line if it does not exist):

```
plugins=(npm)
```

After that this custom plugin will override default `npm` plugin from Oh-My-ZSH.

## Update

```
cd ~/.oh-my-zsh/custom/plugins/npm
git pull
```
