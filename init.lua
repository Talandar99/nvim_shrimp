-- Packer autoinstalation
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	is_bootstrap = true
	vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
	vim.cmd [[packadd packer.nvim]]
end

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'-- Package manager
	use 'tpope/vim-surround'--surround 
	use 'jiangmiao/auto-pairs'--Auto Pairs
	use 'fedepujol/move.nvim'--lines movement
	use 'chrisbra/Colorizer'--Colors highlight 
	use 'potamides/pantran.nvim'--Translation in fly
	use 'vimwiki/vimwiki'--vim wiki
	use 'nvim-lualine/lualine.nvim'--bottom bar 
	use 'folke/tokyonight.nvim'--tokyonight theme
	use 'kyazdani42/nvim-web-devicons'--icons in your statusline
	use 'nvim-telescope/telescope-file-browser.nvim'
	use 'startup-nvim/startup.nvim'--startup
	use 'ThePrimeagen/harpoon'--Harpoon
	use "lukas-reineke/indent-blankline.nvim" -- indent blankline
	use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }-- Telescope
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }
  	use {'nvim-treesitter/nvim-treesitter',run = function()  -- Highlight, edit, and navigate code
      	pcall(require('nvim-treesitter.install').update { with_sync = true }) end,}
  	use {'nvim-treesitter/nvim-treesitter-textobjects', after = 'nvim-treesitter',} -- Additional text objects via treesitter
  	if is_bootstrap then require('packer').sync() end
end)
if is_bootstrap then
  print '=================================='
  print '    useins are being installed'
  print '    Wait until Packer completes,'
  print '       then restart nvim'
  print '=================================='
  return
end
local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
vim.api.nvim_create_autocmd('BufWritePost', {
  command = 'source <afile> | PackerCompile',
  group = packer_group,
  pattern = vim.fn.expand '$MYVIMRC',
})

require("indent_blankline").setup {
	show_current_context = true,
	show_current_context_start = true,
}
require('initial_setup') --local
require('key_mappings') --local
require("telescope").load_extension "file_browser"
require("telescope").load_extension "harpoon"
require("startup").setup({theme = "talandar"}) -- put theme name here
require('treesitter_config') -- local
require('tokyonightsetup') -- local
