set nocompatible	" be iMproved, required
filetype off		" required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Raimondi/delimitMate'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'helino/vim-json'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'valloric/youcompleteme'
Plugin 'vim-airline/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'ap/vim-css-color'
Plugin 'sirver/ultisnips'
Bundle 'ervandew/supertab'

" colorschemes
Plugin 'Lokaltog/vim-distinguished'
Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Without code preview
set completeopt-=preview

" Gvim
set guioptions-=T
set guioptions-=m

" Font
set guifont=inconsolata-g\ 12

" ycm
let g:ycm_path_to_python_interpreter = '/usr/bin/python'

" ctrlp
let g:ctrlp_custom_ignore = '/node_modules/'

" airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories=[$HOME."/.vim/bundle/ultisnips/snips"]

" emmet
let g:user_emmet_leader_key='<C-z>'

" general
set t_Co=256
set background=dark
colorscheme molokai

set clipboard=unnamed
set number
syntax on
set mouse=a
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set expandtab
set noswapfile
set updatetime=500

" whitespace
set list
set listchars=tab:•\ ,trail:•

" seerch
set incsearch

let mapleader=','

" custom shortcuts
nmap <leader>nt :NERDTree<cr>
nnoremap <leader>l :bnext<cr>
nnoremap <leader>h :bprevious<cr>
nnoremap <leader>q :bp <BAR> bd #<cr>
