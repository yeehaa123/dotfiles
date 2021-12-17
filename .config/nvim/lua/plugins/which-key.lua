Plug("folke/which-key.nvim")
local M = {}
M.after = function()
	require("which-key").setup({
		triggers = "auto", -- automatically setup triggers

		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	})
end
return M
