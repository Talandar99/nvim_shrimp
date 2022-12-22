vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set('n', '<leader>E', vim.cmd.Ex , { desc = 'native filesearch' })
vim.keymap.set('n', '<leader>c', "<cmd>ColorToggle<CR>", { desc = 'toggle colorizer' })
--quit
vim.keymap.set('n', '<leader>q', "<cmd>q<CR>", { desc = 'quit' })
vim.keymap.set('n', '<leader>wq', "<cmd>bufdo wq!<CR>", { desc = 'write everything and quit' })
vim.keymap.set('n', '<leader>aa', "<cmd>wa!<CR>", { desc = 'write' })
local harpoon_mark = require('harpoon.mark')
local harpoon_ui = require('harpoon.ui')
vim.keymap.set('n', '<A-e>', harpoon_ui.toggle_quick_menu, { desc = 'open harpoon menu' })
vim.keymap.set('n', '<A-w>', harpoon_mark.add_file, { desc = 'open harpoon menu' })

vim.cmd([[
"-- TOGGLES --
"paste and don't save previous option
xnoremap <leader>p "_d1hp

"open telescope (close have same binding)
nnoremap <C-c> :Telescope find_files<CR>
nnoremap <C-s> :Telescope buffers<CR>
nnoremap <C-z> :Telescope file_browser<CR>

"Harpoon
nnoremap <leader>1 :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <leader>2 :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <leader>3 :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <leader>4 :lua require("harpoon.ui").nav_file(4)<CR>
nnoremap <leader>5 :lua require("harpoon.ui").nav_file(5)<CR>
nnoremap <leader>6 :lua require("harpoon.ui").nav_file(6)<CR>
nnoremap <leader>7 :lua require("harpoon.ui").nav_file(7)<CR>
nnoremap <leader>8 :lua require("harpoon.ui").nav_file(8)<CR>

"split jumping
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

"moving lines
nnoremap <silent> <A-j> :MoveLine(1)<CR>
nnoremap <silent> <A-k> :MoveLine(-1)<CR>
vnoremap <silent> <A-j> :MoveBlock(1)<CR>
vnoremap <silent> <A-k> :MoveBlock(-1)<CR>
nnoremap <silent> <A-l> :MoveHChar(1)<CR>
nnoremap <silent> <A-h> :MoveHChar(-1)<CR>
vnoremap <silent> <A-l> :MoveHBlock(1)<CR>
vnoremap <silent> <A-h> :MoveHBlock(-1)<CR>


"automaticly center after C-d C-u
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

"Dont use arrows
map <Left> <Esc>:echo 'embrace vim'<CR>
map <Right> <Esc>:echo 'you are weak'<CR>
map <Up> <Esc>:echo 'never slow down'<CR>
map <Down> <Esc>:echo 'you don't need this...'<CR>
]])
