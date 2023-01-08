vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.cmd(
	[[
set completeopt=menu,menuone,noselect
set relativenumber
set number
set signcolumn=yes
syntax on
set t_Co=256
set cursorline
set splitbelow
set encoding=UTF-8
set noerrorbells                                              	
set nowrap
set nobackup
set nohlsearch
set smartcase
set noswapfile
set nobackup
set undodir=~/.nvim-data/backup
set undofile
set incsearch
set softtabstop=0 noexpandtab
set tabstop=6
set shiftwidth=6
set clipboard=unnamedplus
set backspace=indent,eol,start
set updatetime=50
set termguicolors
let g:lightline = {'colorscheme': 'tokyonight'}
]]
)
