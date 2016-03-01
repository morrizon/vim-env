# vim-env

Config of Vim following the screencast serie [Vim Mastery](https://laracasts.com/series/vim-mastery). Also include personal config and some tweaks for PHP.

### INSTALL

* Clone in your ~/.vim and add to your .vimrc:
```
so ~/.vim/vim-env/config.vim
```
* Load Vim
* Install the plugins using Vundle:
```
:PluginInstall
```
* Load PHP config adding to ~/vim/after/ftplugin/php.vim:
```
so ~/.vim/vim-env/php.vim
```
* Download the colorscheme [vim-atom-dark](https://github.com/gosukiwi/vim-atom-dark) in the folder ~/.vim/colors
* To use some plugins need install dependencies.

### PLUGINS

#### vim-snipmate

```
cd ~/.vim
ln -s vim-env/snippets .
```
