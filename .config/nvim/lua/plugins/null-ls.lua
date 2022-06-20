Plug("jose-elias-alvarez/null-ls.nvim")

local M = {}

M.after = function()
	require("null-ls").setup({
		sources = {
			require("null-ls").builtins.formatting.stylua,
			require("null-ls").builtins.formatting.prettierd.with({
				filetypes = {
					"svelte",
				},
			}),
			require("null-ls").builtins.formatting.prettier.with({
				filetypes = {
					"javascript",
					"javascriptreact",
					"typescript",
					"typescriptreact",
					"vue",
					"css",
					"scss",
					"less",
					"html",
					"json",
					"astro",
					"yaml",
					"markdown",
					"graphql",
				},
			}),
			require("null-ls").builtins.formatting.terraform_fmt,
			require("null-ls").builtins.diagnostics.eslint_d,
			require("null-ls").builtins.completion.spell,
		},
		on_attach = function(client)
			if client.resolved_capabilities.document_formatting then
				vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
			end
		end,
	})
end

return M
