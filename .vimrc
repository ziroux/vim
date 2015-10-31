execute pathogen#infect()
syntax on
filetype plugin indent on
set autoindent
set pastetoggle=<F12>
set cursorline
set nocompatible
set backspace=indent,eol,start
set ruler
set number
set showcmd
set title
set ttyfast
set expandtab
set shiftwidth=4
set tabstop=4
set hlsearch
set wildmenu
set ignorecase
set smarttab
set history=1000
set laststatus=2
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set list
set scrolloff=6
set sidescroll=6
set nowrap
set t_Co=256
colorscheme Tomorrow-Night-Bright

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'

map <C-n> :NERDTreeToggle<CR>
