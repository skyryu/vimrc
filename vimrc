
"================= vundle settings ========================== 
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

Plugin 'gmarik/Vundle.vim' "let Vundle manage Vundle, required
Plugin 'scrooloose/syntastic' "PEP8
Plugin 'vim-scripts/indentpython.vim' "PEP8 auto indentation
Plugin 'nvie/vim-flake8'  "PEP8
Plugin 'jnurmine/Zenburn' "Color scheme
Plugin 'altercation/vim-colors-solarized' "Color scheme 2

Plugin 'scrooloose/nerdtree' "Doc tree bar
Plugin 'jistr/vim-nerdtree-tabs' "Doc tree bar
Plugin 'kien/ctrlp.vim' "Doc search tool
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} "Status bar

" All of your Plugins must be added before the following line
call vundle#end()            "required

"================= basic =======================
set encoding=utf-8
set nu

"================= screen split and ========================== 
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-k>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"================== syntax and color ===========================
let python_highlight_all=1
colorscheme murphy

au BufNewFile,BufRead *.py colorscheme zenburn

"set background=dark
"colorscheme solarized
"call togglebg#map("<F5>")

syntax on

"================== code folding ===================
set foldmethod=indent
set foldlevel=99

"Enable folding whith the space bar
au BufNewFile,BufRead *.py nnoremap <space> za

"================= PEP8 ========================
au BufNewFile,BufRead *.py set tabstop=4 
au BufNewFile,BufRead *.py set softtabstop=4
au BufNewFile,BufRead *.py set shiftwidth=4
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix

"================ build and running =================
au BufNewFile,BufRead *.py nnoremap <F5> <ESC>:w<CR>:!python %<CR>

"================ NERDTree Doc viewer ================
let g:nerdtree_tabs_open_on_console_startup=1

