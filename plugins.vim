set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'joonty/vim-phpqa'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-reload'
" Plugin 'joonty/vim-phpunitqf.git'
Plugin 'pangloss/vim-javascript'
" Plugin 'geekjuice/vim-mocha'
Plugin 'tpope/vim-vinegar'
Plugin 'sheerun/vim-polyglot'
" Plugin 'jwalton512/vim-blade'
" Plugin 'adoy/vim-php-refactoring-toolbox'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'rking/ag.vim'
" Plugin 'skwp/greplace.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'tpope/vim-surround'
Plugin 'StanAngeloff/php.vim'
" Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'ervandew/supertab'
" Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'tobyS/vmustache'
Plugin 'SirVer/ultisnips'
Plugin 'tobyS/pdv'
" Plugin 'ludovicchabant/vim-gutentags'
Plugin 'joonty/vdebug'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
