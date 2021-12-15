Plug('neoclide/coc.nvim', {branch = 'release'})

vim.cmd [[
  let g:coc_global_extensions = ["coc-css", "coc-eslint", "coc-html", "coc-emmet", "coc-tslint-plugin", "coc-json", "coc-yaml", "coc-prettier"]

  command! -nargs=0 Prettier :CocCommand prettier.formatFile
  au BufNewFile,BufRead *.ts setlocal filetype=typescript
  au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
]]
