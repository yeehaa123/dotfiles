Plug("neovim/nvim-lspconfig")

local M = {}
M.after = function()
	local nvim_lsp = require("lspconfig")
	local on_attach = function(client, bufnr)
		client.resolved_capabilities.document_formatting = false

		local function buf_set_keymap(...)
			vim.api.nvim_buf_set_keymap(bufnr, ...)
		end
		local opts = { noremap = true, silent = true }

		buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
		buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
		buf_set_keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
		buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
		buf_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
		buf_set_keymap("n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
		buf_set_keymap("n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
		buf_set_keymap("n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
		buf_set_keymap("n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
		buf_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
		buf_set_keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
		buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
		buf_set_keymap("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
		buf_set_keymap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
		buf_set_keymap("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
		buf_set_keymap("n", "<space>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)
		buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
	end

	-- Use a loop to conveniently call 'setup' on multiple servers and
	-- map buffer local keybindings when the language server attaches
	local servers = { "tsserver", "sumneko_lua", "svelte", "tailwindcss", "terraformls", "cssls" }
	local capabilities = vim.lsp.protocol.make_client_capabilities()
	capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
	local path_to_elixirls = vim.fn.expand("/Users/yeehaa/.config/elixir-ls/language_server.sh")

	for _, lsp in ipairs(servers) do
		nvim_lsp[lsp].setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
			on_attach = on_attach,
			capabilities = capabilities,
			flags = {
				debounce_text_changes = 150,
			},
		})
	end

	nvim_lsp.elixirls.setup({
		cmd = { path_to_elixirls },
		capabilities = capabilities,
		on_attach = on_attach,
		settings = {
			elixirLS = {
				-- I choose to disable dialyzer for personal reasons, but
				-- I would suggest you also disable it unless you are well
				-- aquainted with dialzyer and know how to use it.
				dialyzerEnabled = false,
				-- I also choose to turn off the auto dep fetching feature.
				-- It often get's into a weird state that requires deleting
				-- the .elixir_ls directory and restarting your editor.
				fetchDeps = false,
			},
		},
	})
end

return M
