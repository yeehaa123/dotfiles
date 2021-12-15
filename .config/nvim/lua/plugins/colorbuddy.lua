Plug 'tjdevries/colorbuddy.vim'
Plug 'tjdevries/gruvbuddy.nvim'

local M = {}

M.after = function()
  require('colorbuddy').colorscheme('gruvbuddy')
end

return M
