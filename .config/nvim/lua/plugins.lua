vim.call('plug#begin', '~/.config/nvim/plugged')

-- dependency for lualine & telescope
Plug 'kyazdani42/nvim-web-devicons'

require('plugins.prettier')
require('plugins.telescope')
require('plugins.coc')
require('plugins.vim-svelte')
require('plugins.vim-jsx-pretty')
require('plugins.terraform')
require('plugins.colorbuddy')
require('plugins.lualine')


Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'jparise/vim-graphql'
Plug 'nvim-lua/plenary.nvim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'mikewest/vimroom'

Plug 'tami5/sqlite.lua'
Plug 'AckslD/nvim-neoclip.lua'
Plug('rajasegar/vim-astro', {branch = 'main'})
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})  -- We recommend updating the parsers on update
Plug('meain/vim-package-info', {['do'] = 'npm install' }) -- npm install -g neovim

vim.call('plug#end')

require('plugins.telescope').after()
require('plugins.colorbuddy').after()
