set nocompatible
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()

syntax on 
filetype plugin on
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" auto complete [ctrl-p]:
" set ofu=syntaxcomplete#Complete"
set backspace=indent,eol,start
set number
" python stuff"
set textwidth=79 " lines longer than 79 columns will be broken
set shiftround " round indent to multiple of 'shiftwidth'
set tabstop=4 " an hard TAB displays as 4 columns
set shiftwidth=4 " operation >> indents 4 columns; << unidents 4 columns
set expandtab " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting TAB/BACKSPACE
set autoindent " align the new line indent with the previous line

" folding settings
set foldmethod=indent "fold based on indent
set foldnestmax=10 "deepest fold is 10 levels
set nofoldenable "dont fold by default
set foldlevel=1 "this is just what i use

" Enable python folding
let g:pymode_folding = 1

" Enable the ctag integration
"autocmd VimEnter    *.py :TagbarOpen 

" meh, enable the mouse.
set mouse=a

set bg=light
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
" save the fingers:
imap jj <Esc>
imap jl <End>
imap hh <Home>

