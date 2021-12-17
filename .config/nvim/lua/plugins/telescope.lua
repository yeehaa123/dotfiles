Plug("nvim-telescope/telescope.nvim")
Plug("nvim-telescope/telescope-project.nvim")
Plug("nvim-telescope/telescope-node-modules.nvim")

nmap("<c-p>", [[<cmd>lua require('telescope.builtin').find_files()<cr>]])
nmap("<c-n>", [[<cmd>lua require('telescope.builtin').file_browser()<cr>]])
nmap("<Leader>gs", [[<cmd>lua require('telescope.builtin').git_status()<cr>]])
nmap("<Leader>pp", [[<cmd>lua require'telescope'.extensions.project.project{}<cr>]])
nmap("<Leader>fg", [[<cmd>lua require('telescope.builtin').live_grep()<cr>)]])
nmap("<Leader>of", [[<cmd>lua require('telescope.builtin').oldfiles()<cr>)]])
nmap("<leader>fb", [[<cmd>lua require('telescope.builtin').buffers()<cr>]])
nmap("<Leader>fh", [[<cmd>lua require('telescope.builtin').help_tags()<cr>]])
nmap("<Leader>vo", [[<cmd>lua require'telescope.builtin'.vim_options{}<cr>]])
nmap("<Leader>ts", [[<cmd>lua require'telescope.builtin'.treesitter{}<cr>]])
nmap("<Leader>T", [[<cmd>lua require'telescope.builtin'.builtin{}<cr>]])
nmap("<Leader>fr", [[<cmd>lua require'telescope.builtin'.lsp_references{}<cr>]])
nmap("<Leader>cr", [[<cmd>lua require'telescope.builtin'.registers{}<cr>]])

local M = {}
M.after = function()
	require("telescope").load_extension("project")
	require("telescope").load_extension("neoclip")
	require("telescope").load_extension("node_modules")
end

return M
