so ~/.vim/vim-env/plugins.vim

"-------------------Some-Configs------------------"
syntax enable                                        "Enable syntax highlight.
let mapleader=','                                    "The default leader is \, but a comma is much better.
set nonumber                                         "Let's not activate the line numbers.
set backspace=indent,eol,start                       "Make backspace behave like every other editor.
set noerrorbells visualbell t_vb=                    "Bo damn bells!
set tags=tags                                        "Avoid duplication problem when works in windows shared folder.
"set autowriteall                                     "Automatic save the file when switching buffers.
"set complete=.,w,b,u                                 "Autocomplete from current file, windows and buffers.

"--------------Identation-------------------------"
set tabstop=4
set shiftwidth=4
set expandtab

"------------------Visuals-------------------------"
set t_CO=256                                         "Use 256 colors. This is useful for Terminal Vim.
colorscheme atom-dark                                "Colorscheme for GUI.
colorscheme atom-dark-256                            "Colorscheme for GUI.
"set guifont=Fira\ Code                               "Font for GUI (don't work in Gvim).
"set macligatures                                     "We want pretty simbols, when available.
set linespace=15                                     "Line-height for GUI (GVim), not in terminal.
set guioptions-=l                                    "Lateral scrolls removal.
set guioptions-=L
set guioptions-=r
set guioptions-=R
set showtabline=2                                    "Show always the tab line.
set guioptions-=e                                    "Disable GUI tabs.

"Left padding
"hi LineNr ctermfg=black ctermbg=white                "Coloring the number column.
"hi foldcolumn ctermfg=black ctermbg=white            "Coloring the fold column.
"set foldcolumn=2                                     "Width of the fold column.

"Get rid of ugly split borders.
hi vertsplit ctermfg=black ctermbg=black

"Tab colors
hi TabLineFill ctermfg=black ctermbg=white
hi TabLine ctermfg=white ctermbg=black
hi TabLineSel ctermfg=black ctermbg=white

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
nmap <Leader>es :e ~/.vim/snippets
"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<CR>
"Help for netrw because F1 is used by desktop.
nmap <Leader>h <F1>

"Help to use grep.
nmap <Leader>g :grep -riI 

"Help to use ctags.
nmap <Leader>s :tag<space>

"Sort PHP use statements.
""http://stackoverflow.com/questions/11531073/how-do-you-sort-a-range-of-lines-by-length
vmap <Leader>su ! awk '{ print length(), $0 \| "sort -n \| cut -d\\  -f2-" }'<cr>


"-----------------Plugins-------------------------"

"/
"/ CtrlP
"/
let g:ctrlp_custom_ignore = 'vendor\|.git\|storage\|public/attachments\|public/libs\|public/vendor\|js\|third_party\|customers'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
"let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
execute "set <M-r>=\er"
nmap <M-r> :CtrlPBufTag<CR>
execute "set <M-e>=\ee"
nmap <M-e> :CtrlPMRUFiles<CR>

"/
"/ NerdTree
"/
let NERDTreeHijackNetrw = 0

"Make NERDTree easier to toggle.
execute "set <M-1>=\e1"
nmap <M-1> :NERDTreeToggle<CR>

"/
"/ Greplace.vim
"/
"set grepprg=ag                                                    "Use Ag to do the search.
"let g:grep_cmd_opts = '--line-numbers --noheading'

"/
"/ vim-php-cs-fixer.vim
"/
let g:php_cs_fixer_level = "psr2"
nnoremap <silent><leader>pd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>
"unmap <silent><leader>pcd

"-----------------Laravel-Specific----------------"
nmap <Leader>lr :e app/Http/routes.php<CR>
nmap <Leader>lm :!php artisan make:
nmap <Leader>lfc :CtrlP<CR>app/Http/Controllers/
nmap <Leader>lfm :CtrlP<CR>app/
nmap <Leader>lfv :CtrlP<CR>resources/views/
nmap <Leader>lev :e resources/views/<CR>

"-----------------vim-php-namespace---------------"
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>n <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>n :call PhpInsertUse()<CR>

"-----------------StanAngeloff-php----------------"
function! PhpSyntaxOverride()
    hi! def link phpDocTags phpDefine
    hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END

"-----------------supertab------------------------"


"-----------------Auto-Commands-------------------"

" Automatically source the vimrc on save.

augroup autosourcing                                 "Delete all autocommands to prevent having it defined twice.
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
    autocmd BufWritePost ~/.vim/vim-env/config.vim source $MYVIMRC
    autocmd BufWritePost ~/.vim/vim-env/plugins.vim source $MYVIMRC
augroup END


" Notes and Tips
" - ctags or tags via CtrlP
"   - Install exuberant-ctags and generate it with ctags -R
"   - Press CTRL-ALT-] to go the tag.
" - netrw/Vinager:
"   - -: go to dirname of current file.
"   - .: selected file in the command line as argument
"   - !: same before in the command line as argument but with the !
"   - d: create dir
"   - %: create file
"   - D: delete file/dir
" - grep
"   - Open fixlist via copen
" - ag+the_silver_searcher
"   - Install silversearcher-ag
"   - Search with :Ag
" - Greplace
"   - Replace in a single window with :Gsearch and :Greplace
" - vim-surround
"   - cs: change surround
"   - ds: delete sorround
"   - S (in visual mode): create surround
" - vim-php-namespace
"   - ctags: ctags-exuberant -R --PHP-kinds=+cf app src
" - vim-php-cs-fixer
"   - Install php-cs-fixer
