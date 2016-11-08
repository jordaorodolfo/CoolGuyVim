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


call plug#end()

" No lines, no code
set number

" Feeling thirsty.
set termguicolors
colorscheme onedark
filetype plugin on

" Searching must me nice.
set incsearch
set hlsearch
set smartcase
set ignorecase

" Identation should be nice.
set autoindent
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set ruler

" New programns using the same keybiddings are just coincidence.
nmap <C-P> :FZF
