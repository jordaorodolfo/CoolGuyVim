" Searching must me nice.
set incsearch
set hlsearch
set smartcase
set ignorecase

" Identation should be nice.
set autoindent
set smartindent
set smarttab
set tabstop=2
set shiftwidth=2
set ruler

" No lines, no code
set number

" best of all keys
let g:mapleader="\<Space>"
let g:maplocalleader="\<Space>m"

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" Yeah, we all know that.

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

"Shorcuts are nice; for comments, even better
Plug 'scrooloose/nerdcommenter'

"Ever used latex and vim? Marvelous.
Plug 'lervag/vimtex'

"Web dev, everybody does.
Plug 'posva/vim-vue'

" Can we make things more IDEish?
Plug 'neomake/neomake'

" The dark(...) completer
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Pretty isn't bad, people.
"Plug 'iCyMind/NeoSolarized'
Plug 'flazz/vim-colorschemes'
"Plug 'joshdick/onedark.vim'
"Plug 'Zenburn'
Plug 'vim-airline/vim-airline'

" Well... Git.
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Languages, languages everywhere
Plug 'sheerun/vim-polyglot'
Plug 'JuliaEditorSupport/julia-vim'

" Very good propaganda.
Plug 'neomake/neomake'

" some more javascript and typescript, web stuff
"Plug 'pangloss/vim-javascript.git'

" the surround plugin, very handy
Plug 'tpope/vim-surround'

" julia support
Plug 'JuliaEditorSupport/julia-vim'
Plug 'JuliaEditorSupport/deoplete-julia'

call plug#end()

" No lines, no code
"set number
set relativenumber

" Feeling thirsty.
set termguicolors
colorscheme onedark
filetype plugin on

" New programns using the same keybiddings are just coincidence.
nmap <C-P> :FZF <Enter>
" Searching must me nice.
set incsearch
set hlsearch
set smartcase
set ignorecase

" Identation should be nice.
set autoindent
set smartindent
set smarttab
set tabstop=2
set shiftwidth=2
set ruler

" lets make some snippet magic
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" some integration for airline.
let g:airline#extensions#tabline#enabled = 1

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" greatest keybindings of all time
" files
nmap <leader>fs :w<Enter>
nmap <leader>ff :FZF<Enter>
nmap <leader>fc :e ~/.config/nvim/init.vim<Enter>
" windows
nmap <leader>wv <C-w>v<Enter>
nmap <leader>wc <C-w>c<Enter>
nmap <leader>wq <C-w>q<Enter>
nmap <leader>wh <C-w>h<Enter>
nmap <leader>wj <C-w>j<Enter>
nmap <leader>wk <C-w>k<Enter>
nmap <leader>wl <C-w>l<Enter>
" buffers
nmap <leader>bd :bd<Enter>
nmap <leader>bn :bn<Enter>
nmap <leader>bp :bp<Enter>
" version control
nmap <leader>gs :Gw<Enter>
nmap <leader>gS :Gstatus<Enter>
nmap <leader>gc :Gcommit<Enter>
nmap <leader>gp :Gpush<Enter>
nmap <leader>gP :Gpull<Enter>
