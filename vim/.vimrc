

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'FuzzyFinder'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-pathogen'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'hdima/python-syntax'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'mtscout6/syntastic-local-eslint.vim'
Plugin 'othree/yajs.vim'
Plugin 'vim-scripts/dbext.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype on
filetype plugin on
filetype indent on

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
let g:syntastic_check_on_open = 0

" airline
let g:airline_theme = 'luna'
let g:airline_powerline_fonts = 0

" ycm
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
" let g:ycm_show_diagnostics_ui = 0

" python
let python_highlight_all = 1

set encoding=utf-8
set fileencoding=utf-8
syntax on
set nocompatible

set shiftwidth=4
set tabstop=4
"set shiftwidth=4
set softtabstop=4
set expandtab
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
set modifiable

map      <F7> <ESC>:FufFile<CR>
map      <F9>  <ESC>:NERDTreeToggle<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-k> :tabnext<CR>
"nnoremap <C-l> :tabclose<CR>

set t_Co=256
colorscheme darknight256

highlight CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

" show trailing white spaces
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" autocmd group
augroup ycmgroup
    autocmd FileType c,cpp,javascript nnoremap gd :YcmCompleter GoToDefinition<CR>
    autocmd FileType c,cpp,javascript nnoremap gr :YcmCompleter GoToReferences<CR>
augroup END

augroup jsonident
    autocmd FileType json setl sw=2 sts=2 et
augroup END
