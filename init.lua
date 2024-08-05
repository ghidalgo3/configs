vim.o.number = true -- equivalent to "set number"
vim.o.shiftwidth=4
vim.g.mapleader = " "

local map = vim.api.nvim_set_keymap
map('i', 'jk', '<Esc>', {noremap = true})
map('n', '<Leader>ev', ':vsplit ~/.config/nvim/init.lua<cr>', {noremap = true})
map('n', '<Leader>sv', ':source ~/.config/nvim/init.lua<cr>', {noremap = true, silent=true})
map('n', '<Leader>f', ':noh<cr>', {noremap = true, silent=true}) -- turn off search highlight

for _, shortcut in ipairs({"w","q"}) do
    map('n', string.format("<Leader>%s", shortcut), string.format(":%s<cr>", shortcut), {noremap=true})
end

for _, window_movement in ipairs({"h","j","k","l"}) do
    map('n', string.format("<Leader>%s", window_movement), string.format("<C-w>%s", window_movement), {noremap=true})
end

-- Now plugins
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
	    "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath,})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.6',
		dependencies = {'nvim-lua/plenary.nvim'},
	},
	"ms-jpq/chadtree",
	"chentoast/marks.nvim",
	{
	    "lukas-reineke/indent-blankline.nvim",
	    main = "ibl",
	    opts = {}
	},
	-- LSP configuration?
	-- "neovim/nvim-lspconfig"
	-- "https://github.com/nvim-lua/plenary.nvim",
})

map('n', '<Leader>t', '<cmd>CHADopen<cr>', {noremap = true, silent=true}) -- turn off search highlight
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


