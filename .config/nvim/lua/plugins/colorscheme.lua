return {
	"anAcc22/sakura.nvim",
	name = "sakura",
	dependencies = { "rktjmp/lush.nvim" },
	priority = 1000, -- load asap
	config = function()
		vim.cmd.colorscheme("sakura")

		local purple = "#957fb8"
		local gray = "#505050"
		local faded_gray = "#303030"
		local strong_faded_gray = "#151515"
		local almost_black = "#151515"
		local black = "#000000"
		local white = "#ffffff"

		local highlights = {
			-- remove bg color
			Normal = { bg = black },
			NormalFloat = { bg = black },

			--general
			Visual = { bg = almost_black },
			ModeMsg = { fg = purple },
			CursorLineNr = { fg = purple },
			CursorLine = { bg = almost_black },
			WinSeparator = { fg = strong_faded_gray },
			MatchParen = { bg = faded_gray },

			-- git signs
			GitSignsAdd = { fg = purple },
			GitSignsAddNr = { fg = purple },
			GitSignsAddLn = { fg = purple },
			GitSignsChange = { fg = purple },
			GitSignsChangeNr = { fg = purple },
			GitSignsChangeLn = { fg = purple },
			GitSignsChangedelete = { fg = purple },
		}

		-- set highlight colors
		for group, colors in pairs(highlights) do
			vim.api.nvim_set_hl(0, group, colors)
		end
	end,
}
