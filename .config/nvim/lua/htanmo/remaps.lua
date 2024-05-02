-- define leader keys
vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-Space>', '<Nop>', {noremap = true, silent = true})
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- in normal mode, when leader e is pressed, open vim file manager
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>B", vim.cmd.bp)
vim.keymap.set("n", "<leader>N", vim.cmd.bn)
vim.keymap.set("n", "<leader>b", vim.cmd.ls)

vim.keymap.set("n", "<leader>w", vim.cmd.wq)

vim.keymap.set('v', '<leader>y', '"+y', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>yy', '"+yy', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>p', '"+p', {noremap = true, silent = true})

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", {noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", {noremap = true, silent = true })

-- Visual Block --
-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", {noremap = true, silent = true})
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", {noremap = true, silent = true})

vim.keymap.set("n", "<leader><leader><CR>", "A<CR><ESC>", {noremap = true, silent = true})
vim.keymap.set("n", "<leader><CR>", "i<CR><ESC>", {noremap = true, silent = true})
