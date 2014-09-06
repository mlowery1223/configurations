set nocompatible

" *** Vundle configuration *** "
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
call vundle#end()

set backspace=2
set backspace=indent,eol,start
syntax on 
filetype plugin on
filetype indent on
colorscheme evening
set mouse=a
set autoindent " align the new line indent with the previous line
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" set ofu=syntaxcomplete#Complete"
"let g:ycm_server_use_vim_stdout = 1
"let g:ycm_server_log_level = 'debug'
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
set backspace=indent,eol,start
set expandtab " insert spaces when hitting TABs
" *** Python configurations *** "
autocmd FileType python set tabstop=4 " an hard TAB displays as 4 columns
autocmd FileType python set textwidth=79 " lines longer than 79 columns will be broken
autocmd FileType python set shiftwidth=4 " operation >> indents 4 columns; << unidents 4 columns
autocmd FileType python set foldnestmax=10 "deepest fold is 10 levels
autocmd FileType python set softtabstop=4 " insert/delete 4 spaces when hitting TAB/BACKSPACE
autocmd FileType python set omnifunc=pythoncomplete#Complete
set shiftround " round indent to multiple of 'shiftwidth'
set foldmethod=indent "fold based on indent
set nofoldenable "dont fold by default
set foldlevel=1 "this is just what i use
let g:pymode_folding = 1

" *** HTML configurations *** "
autocmd FileType html set tabstop=2 " an hard TAB displays as 4 columns
autocmd FileType html set shiftwidth=2
autocmd FileType html set textwidth=200 " lines longer than 200 columns will be broken
:let g:html_indent_inctags = "html,body,head,tbody"
set expandtab " insert spaces when hitting TABs
autocmd FileType html set softtabstop=2 " insert/delete 4 spaces when hitting TAB/BACKSPACE
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
imap jj <Esc>
imap jl <End>
imap hh <Home>

" *** Nerdtree *** "
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
