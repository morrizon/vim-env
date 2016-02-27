so ~/.vim/vim-env/plugins.vim
syntax enable

set backspace=indent,eol,start                       "Make backspace behave like every other editor.
let mapleader=','                                    "The default leader is \, but a comma is much better.
"set number                                           "Let's activate the line numbers.
set sw=4 ts=4 expandtab                              "Ident always with 4 spaces, also when use tab.

"------------------Visuals-------------------------"
set t_CO=256                                         "Use 256 colors. This is useful for Terminal Vim.
colorscheme atom-dark                                "Colorscheme for GUI.
colorscheme atom-dark-256                            "Colorscheme for GUI.
"set guifont=Fira\ Code                               "Font for GUI (don't work in Gvim).
set linespace=15                                     "Line-height for GUI (GVim), not in terminal.
set guioptions-=l                                     "Lateral scrolls removal.
set guioptions-=L
set guioptions-=r
set guioptions-=R

"------------------Search--------------------------"
set hlsearch                                         "Enable highlight search results.
set incsearch                                        "Enable highlight search before press return.

"------------------Split Management----------------"
set splitbelow
set splitright

"Better navigation between splitted windows
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>

"expand current window
nmap <C-E> :vertical res<CR>:res<CR>

"------------------Mappings...---------------------"

"Make it easy to edit the vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<CR>
"Add a simple highlight removal.
nmap <Leader><space> :nohlsearch
"Help for netrw because F1 is used by desktop
nmap <Leader>h <F1>

"------------------Auto-Commands-------------------"
augroup autosourcing                                 "Delete all autocommands to prevent having it defined twice.
    autocmd!
    autocmd BufWritePost $MYVIMRC source %
augroup END

