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

call plug#begin()

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

"lsp plugins
"Plug 'neoclide/coc.nvim'  " Auto Completion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" code snippets in lua
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" AI tools
Plug 'github/copilot.vim'

set encoding=UTF-8

call plug#end()
"Plug 'https://github.com/preservim/nerdtree' " NerdTree

" require plugin configs
lua require('srigdon')

nnoremap <C-f> :NvimTreeFocus<CR>

nmap <F8> :TagbarToggle<CR>

:colorscheme jellybeans

luafile /home/${USER}/.config/nvim/plug-config/lsp-config.lua
luafile /home/${USER}/.config/nvim/plug-config/nvim-cmp.lua
