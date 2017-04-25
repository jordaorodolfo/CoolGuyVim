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
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'

" Well... Git.
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Languages, languages everywhere
Plug 'sheerun/vim-polyglot'

" Very good propaganda.
Plug 'neomake/neomake'

" some more javascript and typescript, web stuff
Plug 'pangloss/vim-javascript.git'

" julia support
Plug 'JuliaEditorSupport/julia-vim'
Plug 'JuliaEditorSupport/deoplete-julia'

call plug#end()


" Feeling thirsty.
set termguicolors
colorscheme onedark
filetype plugin on

" New programns using the same keybiddings are just coincidence.
nmap <C-P> :FZF <Enter>

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
