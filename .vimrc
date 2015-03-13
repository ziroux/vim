execute pathogen#infect()
syntax on
filetype plugin indent on
set pastetoggle=<F12>
set cursorline
set nocompatible
set backspace=indent,eol,start
set ruler
set showcmd
set title
set ttyfast
set expandtab
set shiftwidth=4
set tabstop=4
set hlsearch
set ignorecase
set smarttab
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set list
set scrolloff=6
set sidescroll=6
set nowrap
set t_Co=256
"colorscheme Tomorrow-Night-Blue
colorscheme Tomorrow-Night-Bright
"colorscheme Tomorrow-Night-Eighties
"colorscheme Tomorrow-Night
"colorscheme Tomorrow
"colorscheme candystripe


function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END
