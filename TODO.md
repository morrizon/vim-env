### CtrlP
* test caching for better performance (vagrant in windows host)
```
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
```
* test use git to find files
```
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
```

### Test Plugins
* jiangmiao/auto-pairs (insert or delete brackets, parens, quotes in pair)
* travisjeffery/vim-auto-mkdir (automatically mkdir when writing file in non-existant directory)
* duggiefresh/vim-easydir (a simple way to create, edit and save files and directories)
* mhinz/vim-signify (uses signs to indicate added, modified and removed lines based on data of an underlying VCS)


### Ctags
* Check [Patched-ctags](https://github.com/shawncplus/phpcomplete.vim/wiki/Patched-ctags) for PHP.
* TOREAD: http://tbaggery.com/2011/08/08/effortless-ctags-with-git.html
