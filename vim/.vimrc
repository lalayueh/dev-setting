set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'FuzzyFinder'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-pathogen'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'moll/vim-node'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" eslint
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_loc_list_height = 3
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
"let g:ycm_show_diagnostics_ui = 0
"let g:syntastic_javascript_eslint_exec = 'eslint'

" airline
let g:airline_theme='luna'


set encoding=utf-8
set fileencodings=utf-8,cp950
syntax on
set nocompatible

set shiftwidth=4
set tabstop=4
set softtabstop=4
set ai
set ruler
set backspace=2
set ic
set ru
set hlsearch
set incsearch
set smartindent
set confirm
set history=100
set laststatus=2
set tabpagemax=50
set nu
set wrap
set linebreak

map      <F7>  <ESC>:FufFile<CR>
map      <F9> <ESC>:NERDTreeToggle<CR>
nmap     <F8>  :TagbarToggle<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
"nnoremap <C-l> :tabclose<CR>

let g:tagbar_width = 30
let g:tagbar_left = 1
set tags=./tags,tags,~/tags
set t_Co=256
colorscheme darknight256

" show trailing white spaces
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
