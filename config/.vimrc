filetype plugin indent on

" Always show status line
set laststatus=2

set nocompatible
set splitbelow
set splitright

" Indentation
set expandtab
set shiftwidth=2
set tabstop=2

" Searching
set hlsearch
set ignorecase
set incsearch
set smartcase

" No backup files
set nobackup
set noswapfile
set nowritebackup

" Directory view
"let g:netrw_banner = 0

" Clear annoying bindings
nnoremap q <nop>
nnoremap <s-k> <nop>

" Make it easier to get into directory view
nnoremap <c-d> :Rexplore<cr><c-l>

" Navigate splits with ctrl-{h,k,j,l}
nnoremap <C-h> <C-w>h
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-l> <C-w>l

" Clear search highlights
nnoremap <silent> <esc><esc> :noh<return>

" FZF
nnoremap <c-p> :Ag<return>

" Colorscheme
syntax on
set background=dark
colorscheme slate
