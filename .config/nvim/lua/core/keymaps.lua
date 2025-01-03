vim.g.mapleader = " " -- spacebar as leader

local keymap = vim.keymap

keymap.set("n", "<leader>e", ":Oil<CR>") -- toggle Oil

-- bufferline
keymap.set("n", "<leader>l", ":BufferLineCycleNext<CR>")
keymap.set("n", "<leader>h", ":BufferLineCyclePrev<CR>")
keymap.set("n", "<C-e>", ":Bdelete<CR>")

keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- restart lsp
