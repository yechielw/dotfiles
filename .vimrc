" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
      endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


call plug#begin()
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'herrbischoff/cobalt2.vim'
Plug 'tomasiser/vim-code-dark'
"Plug 'valloric/youcompleteme'
call plug#end()

syntax on
filetype on
colorscheme cobalt2 "codedark gruvbox

set nocompatible
set tabstop=4 softtabstop=4
set smartindent
set shiftwidth=4
set expandtab
set number relativenumber
set background=dark
set termguicolors
set nowrap
set scrolloff=4

let g:airline_powerline_fonts = 1
let g:airline_theme = 'codedark'
nmap <C-n> :NERDTreeToggle<CR>
