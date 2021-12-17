Plug("kyazdani42/nvim-tree.lua")

nmap("<c-r>", [[:NvimTreeToggle <cr>]])
local M = {}
M.after = function()
	require("nvim-tree").setup()
end
return M
