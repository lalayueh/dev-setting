" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'scrooloose/nerdtree'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'othree/yajs.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-apathy'
Plugin 'w0rp/ale'
Plugin 'hashivim/vim-terraform'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on

" ale
"let g:ale_completion_enabled = 1
"let g:ale_open_list = 1
"let g:ale_list_window_size = 3
let g:ale_sign_column_always = 1
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
let g:ale_yaml_yamllint_options = '-c ~/.yamllint'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['eslint'],
\  'typescript': ['tslint'],
\  'c': ['clang'],
\  'cpp': ['clang'],
\  'json': ['jsonlint'],
\  'yaml': ['yamllint']
\}
let g:ale_linters = {
\  'javascript': ['eslint'],
\  'typescript': ['tsserver', 'tslint'],
\  'c': ['clang'],
\  'cpp': ['clang'],
\  'json': ['jsonlint'],
\  'yaml': ['yamllint']
\}

" ycm
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
" let g:ycm_filetype_blacklist = { 'typescript': 1 }

" airline
"let g:airline_theme = 'luna'
let g:airline_theme='papercolor'
let g:airline_powerline_fonts = 0
let g:airline_section_a = ''
let g:airline_section_b = ''
let g:airline_section_z = ''
let g:airline#extensions#ale#enabled = 1

" terraform
let g:terraform_align = 1

syntax on
set encoding=utf-8
set fileencoding=utf-8
set nocompatible
set completeopt=longest,menu,noinsert,noselect
set backspace=2
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set ignorecase
set ruler
set hlsearch
set incsearch
set confirm
set history=200
set laststatus=2
set tabpagemax=50
set number
set wrap
set linebreak
set modifiable
set t_Co=256
set background=dark

map <F9>  <ESC>:NERDTreeToggle<CR>
nmap <silent> <C-n> <Plug>(ale_previous_wrap)
nmap <silent> <C-m> <Plug>(ale_next_wrap)
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"colorscheme PaperColor
highlight Normal ctermbg=None
colorscheme darknight256
highlight SignColumn ctermbg=black

" show trailing white spaces
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" autocmd group
augroup jsonident
    autocmd FileType json setl sw=2 sts=2 et
augroup END
