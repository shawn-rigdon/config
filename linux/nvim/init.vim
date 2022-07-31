:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set clipboard+=unnamedplus
"autocmd FileType c,cpp,python,sh,proto,cmake set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
"autocmd FileType make set noexpandtab tabstop=4 shiftwidth=4 softtabstop=0

call plug#begin('~/.local/share/nvim/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'tpope/vim-surround' " Surrounding ysw)
Plug 'tpope/vim-commentary' " For Commenting gcc & gc
Plug 'vim-airline/vim-airline' " Status bar
Plug 'lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'ap/vim-css-color' " CSS Color Preview
Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'ryanoasis/vim-devicons' " Developer Icons
Plug 'tc50cal/vim-terminal' " Vim Terminal
Plug 'preservim/tagbar' " Tagbar for code navigation
Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
"Plug 'neoclide/coc.nvim', { 'branch': 'release', 'do': 'yarn install --frozen-lockfile' }  " Auto Completion
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " Auto Completion

set encoding=UTF-8

call plug#end()
"Plug 'https://github.com/preservim/nerdtree' " NerdTree

" require plugin configs
lua require('srigdon')

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:colorscheme jellybeans
