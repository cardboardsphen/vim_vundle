set nocompatible               " be iMproved
filetype off                   " required!
filetype plugin indent on     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-scripts/dbext.vim'
Bundle 'stephpy/vim-php-cs-fixer'
Bundle 'vim-scripts/dbext.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'othree/html5.vim'
Bundle 'tomasr/molokai'
Bundle 'scrooloose/syntastic'
Bundle 'SirVer/ultisnips'
Bundle 'joonty/vdebug.git'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/renamer.vim'
Bundle 'hokaccha/vim-html5validator'
Bundle 'ervandew/supertab'
Bundle 'altercation/vim-colors-solarized'
Bundle 'skammer/vim-css-color'
Bundle '2072/PHP-Indenting-for-VIm'

" colorscheme molokai
set background=dark
colorscheme solarized

" Set font in GUI window
let &guifont='Menlo Bold:h17'

" Sets current directory to be the same as the file being edited
set autochdir

" Turn syntax highlighting on
syntax on

" Allow backspacing over everything
set backspace=indent,eol,start

" Use UTF-8 as the default buffer encoding
set enc=utf-8

" Fix my <Backspace> key (in Mac OS X Terminal)
set t_kb=

fixdel

" Highlights Line cursor is on
set cursorline 

" Hightlights words found in search
set hlsearch 

" Shows partial matches when searching
set incsearch 

" spell checking
set spell 

" Let yank operations use system clipboard
set clipboard=unnamed

" change the mapleader from \ to ,
let mapleader=","

" dbext configuration
let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=web:passwd=web:dbname=qt:extra=-t'
let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=web:passwd=web:dbname=gdp:extra=-t'
let g:sql_type_default = 'mysql'
let g:ftplugin_sql_omni_key = '<C-C>'

" Drupal Vim Configuration
" http://drupal.org/node/29325
augroup drupal
  autocmd BufRead,BufNewFile *.module set filetype=php.html
  autocmd BufRead,BufNewFile *.theme set filetype=php.html
  autocmd BufRead,BufNewFile *.inc set filetype=php.html
  autocmd BufRead,BufNewFile *.install set filetype=php.html
  autocmd BufRead,BufNewFile *.info set filetype=php.html
  autocmd BufRead,BufNewFile *.engine set filetype=php.html
  autocmd BufRead,BufNewFile *.profile set filetype=php.html
  autocmd BufRead,BufNewFile *.test set filetype=php.html
  autocmd BufRead,BufNewFile *.php set filetype=php.html
augroup END

" Enable Omnicompletion
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType inc set omnifunc=phpcomplete#CompletePHP
autocmd FileType sql set omnifunc=sqlcomplete#Complete

" Set pman
autocmd FileType php set keywordprg=pman
autocmd FileType php.html set keywordprg=pman

" Set pman
autocmd FileType vim set keywordprg=:help

" Add ghost icon to toolbar and change transparency when clicked.
amenu icon=~/.vim/Boo.icns ToolBar.Transparency :let &transp = &transp == 0 ? 10 : 0<CR>

" Tabs, Spaces and Indentation.

" Use spaces for tabs.
set expandtab 

" Number of spaces to use for tabs.
set tabstop=2 

" Number of spaces to autoindent.
set shiftwidth=2 

" Number of spaces for a tab.
set softtabstop=2 

" set autoindent " Set autoindenting on.
set ai

set smartindent

" Backspace, this is the same as :set backspace=indent,eol,start.
set bs=2 

" Show the cursor position.
set ruler 

" Show 5 lines above/below the cursor when scrolling.
set scrolloff=0

" Line numbers on.
set number 

" Shows the command in the last line of the screen.
set showcmd 

" Highlight current line, I found this slowed things.
set cursorline 

"set paste "Fixes identation when pasting stuff
"set paste

"Turns off spell check in terminal mode to stop red highlight.
set nospell

" Tab completion

" Enhanced command line completion
set wildmenu                    

" type tab in cmdline to start wildcard expansion
set wildchar=<Tab>              
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.swp,*.bak,*.pyc,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.mp4,*.mp3,*.pdf,*.jpg,*.gif,*.png

" Backup.
set nobackup " Don't backup files.
set nowritebackup
set noswapfile

" Auto close preview window.
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Ultisnips Configuration
set rtp+=~/Documents/snippets
let g:UltiSnipsSnippetsDir = '~/Documents/snippets'
let g:UltiSnipsListSnippets = '<c-tab>'
let g:UltiSnipsExpandTrigger ="<tab>"
let g:UltiSnipsJumpForwardTrigger ="<tab>"
let g:UltiSnipsJumpBackwardTrigger ="<s-tab>"

" Fix syntax coloring when preview closes?
set completeopt-=preview

" netrw configuration
let g:netrw_browse_split = 3

" ctrlp configuration
let g:ctrlp_open_new_file = 't'
let g:ctrlp_clear_cache_on_exit = 0

" php configuration
let g:PHP_removeCRwhenUnix = 1
" let g:PHP_default_indenting = 1
" let g:PHP_autoformatcomment = 0
" let g:PHP_outdentphpescape = 0
" let g:PHP_vintage_case_default_indent = 1

" Set Sytastic phpcs to use certain standard
let g:syntastic_phpcs_conf=" --standard=drupal --extensions=php,module,inc,install,test,profile,theme"

" Enabled Doxygen
let g:load_doxygen_syntax=1

let g:php_sql_query = 1
let g:php_htmlInStrings = 1

" Disable no write since last change vim message.
set hidden

" Set encoding to UTF-8
set encoding=utf-8

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=3

" Indicates a fast terminal connection.
set ttyfast

" Show the line and column number of the cursor position, separated by a comma.
set ruler

" Show the line number relative to the line with the cursor in front of each line.
set relativenumber

"	All matches in a line are substituted instead of one.
set gdefault
