Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})  -- We recommend updating the parsers on update

local M = {}
M.after = function()
  require'nvim-treesitter.configs'.setup {
    indent = {
      enable = true
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      }
    }
  }

  vim.opt.foldmethod = "expr"
  vim.foldexpr = "nvim_treesitter#foldexpr()"
end

return M
