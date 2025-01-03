return {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    config = function()
        vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
        require("oil").setup()
    end,
}
