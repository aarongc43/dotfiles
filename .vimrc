set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set backspace=indent,eol,start
set complete-=i
set smarttab
set exrc
set relativenumber
set nohlsearch
set hidden
set nu
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set colorcolumn=80
set cmdheight=2
set nocompatible
set shortmess+=c
set guifont= Source\ Code\ Pro\ Regular\ 14
set t_Co=256

call plug#begin()

Plug 'gruvbox-community/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'yggdroot/indentline'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

call plug#end()

if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
    endif

colorscheme spaceduck

let mapleader = " "
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

" greatest remap ever
vnoremap <leader>p "_dP
inoremap <C-Return> <CR><CR><C-o>k<Tab>
