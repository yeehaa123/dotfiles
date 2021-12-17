vim.call("plug#begin", "~/.config/nvim/plugged")

-- dependency for lualine & telescope
Plug("kyazdani42/nvim-web-devicons")
Plug("L3MON4D3/LuaSnip")

local treesitter = require("plugins.treesitter")
local cmp = require("plugins.nvim-cmp")
local lspconfig = require("plugins.nvim-lspconfig")
local nullls = require("plugins.null-ls")
local nightfox = require("plugins.nightfox")
local telescope = require("plugins.telescope")
local lualine = require("plugins.lualine")
local whichkey = require("plugins.which-key")
local nvimtree = require("plugins.nvim-tree")

require("plugins.prettier")
require("plugins.vim-svelte")
require("plugins.vim-jsx-pretty")
require("plugins.vim-indent-guides")
require("plugins.terraform")

Plug("folke/trouble.nvim")
Plug("ianks/vim-tsx")
Plug("jparise/vim-graphql")
Plug("nvim-lua/plenary.nvim")
Plug("tpope/vim-sensible")
Plug("tpope/vim-surround")
Plug("pangloss/vim-javascript")
Plug("mattn/emmet-vim")
Plug("tpope/vim-fugitive")
Plug("mikewest/vimroom")

Plug("tami5/sqlite.lua")
Plug("AckslD/nvim-neoclip.lua")
Plug("rajasegar/vim-astro", { branch = "main" })

-- npm install -g neovim
Plug("meain/vim-package-info", { ["do"] = "npm install" })

-- require('plugins.coc')
-- require("plugins.terraform")
-- local colorbuddy = require("plugins.colorbuddy")
vim.call("plug#end")

local aftercare = { treesitter, cmp, lspconfig, nullls, telescope, lualine, nightfox, whichkey, nvimtree }

for _, v in pairs(aftercare) do
	v.after()
end

-- colorbuddy.after()
