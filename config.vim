so ~/.vim/vim-env/plugins.vim

"-------------------Some-Configs------------------"
syntax enable                                        "Enable syntax highlight
let mapleader=','                                    "The default leader is \, but a comma is much better.
"set number                                           "Let's activate the line numbers.
set backspace=indent,eol,start                       "Make backspace behave like every other editor.

"--------------Identation-------------------------"
set tabstop=4
set shiftwidth=4
set expandtab

"------------------Visuals-------------------------"
set t_CO=256                                         "Use 256 colors. This is useful for Terminal Vim.
colorscheme atom-dark                                "Colorscheme for GUI.
colorscheme atom-dark-256                            "Colorscheme for GUI.
"set guifont=Fira\ Code                               "Font for GUI (don't work in Gvim).
set linespace=15                                     "Line-height for GUI (GVim), not in terminal.
set guioptions-=l                                    "Lateral scrolls removal.
set guioptions-=L
set guioptions-=r
set guioptions-=R

"------------------Searching----------------------"
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

"-------------------Mappings----------------------"

"Make it easy to edit the vimrc file.
nmap <Leader>ev :tabedit $MYVIMRC<CR>
"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<CR>
"Help for netrw because F1 is used by desktop
nmap <Leader>h <F1>

"-----------------Plugins-------------------------"

"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'vendor\|.git\|storage\|public/attachments\|public/libs\|public/vendor\|js'
let g:ctrlp_match_window = 'top,order:btt,min:1,max:30,results:30'
execute "set <M-e>=\er"
execute "set <M-e>=\ee"
nmap <M-r> :CtrlPBufTag<CR>
nmap <M-e> :CtrlPMRUFiles<CR>

"-----------------Auto-Commands-------------------"

" Automatically source the vimrc on save.

augroup autosourcing                                 "Delete all autocommands to prevent having it defined twice.
    autocmd!
    autocmd BufWritePost $MYVIMRC source %
augroup END
