local function jellybeans()
   return "jellybeans-nvim"
end

local themes = {jellybeans}

function ColorNeovim(x)
    vim.opt.background= 'dark'

    local color = themes[x]()
    vim.cmd.colorscheme(color)

    vim.cmd.hi("Normal guibg=NONE ctermbg=NONE")
    vim.cmd.hi("NormalFloat guibg=NONE ctermbg=NONE")
    vim.cmd.hi("FloatBorder guibg=NONE ctermbg=NONE")
    vim.cmd.hi("EndOfBuffer guibg=NONE ctermbg=NONE")
    vim.cmd.hi("SignColumn guibg=NONE ctermbg=NONE")
    vim.cmd.hi("NormalNC guibg=NONE ctermbg=NONE")
    vim.cmd.hi("MsgArea guibg=NONE ctermbg=NONE")
    vim.cmd.hi("Pmenu guibg=NONE ctermbg=NONE")

    vim.cmd.hi("FidgetTitle guibg=NONE ctermbg=NONE")
    vim.cmd.hi("FidgetTask guibg=NONE ctermbg=NONE")

end

ColorNeovim(1)
