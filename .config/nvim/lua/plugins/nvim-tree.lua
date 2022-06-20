Plug("kyazdani42/nvim-tree.lua")

local M = {}
M.after = function()
	require("nvim-tree").setup()
end
return M
