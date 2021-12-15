Plug('prettier/vim-prettier', {['do'] = 'yarn install' })
vim.g['prettier#quickfix_enabled'] = 0
vim.g['prettier#autoformat_require_pragma'] = 0
vim.cmd [[
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.svelte,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
]]
