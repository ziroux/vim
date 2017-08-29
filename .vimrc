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
if version >= 703
    set relativenumber
endif
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

" Remember to install Powerline patched fonts
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline_theme='dark'

" Nerd tree shortcut
map <C-n> :NERDTreeToggle<CR>

" Transparent background
highlight Normal ctermbg=none
highlight NonText ctermbg=none

" Run Python script with F9
autocmd FileType python nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

