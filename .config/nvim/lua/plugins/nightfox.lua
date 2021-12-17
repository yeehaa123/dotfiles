Plug("EdenEast/nightfox.nvim")

local M = {}

M.after = function()
	local nightfox = require("nightfox")

	nightfox.setup({
		fox = "nightfox", -- change the colorscheme to use nordfox
		alt_nc = "true",
		inverse = {
			match_paren = true, -- inverse the highlighting of match_parens
		},
		styles = {
			comments = "italic", -- change style of comments to be italic
			keywords = "bold", -- change style of keywords to be bold
			functions = "italic,bold", -- styles can be a comma separated list
		},
	})

	nightfox.load()
end

return M
