vim.call('plug#begin', '~/.config/nvim/plugged')


require('plugins.prettier')
require('plugins.telescope')
require('plugins.coc')
require('plugins.vim-svelte')
require('plugins.vim-jsx')
require('plugins.terraform')

Plug 'kyazdani42/nvim-web-devicons'
require('plugins.lualine')
-- dependency for lualine


Plug 'tjdevries/colorbuddy.vim'
Plug 'tjdevries/gruvbuddy.nvim'

Plug 'ianks/vim-tsx'
Plug 'leafgarland/typescript-vim'
Plug 'jparise/vim-graphql'
Plug 'nvim-lua/plenary.nvim'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'tomasr/molokai'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'mattn/emmet-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-fugitive'
Plug 'dikiaap/minimalist'
Plug 'tami5/sqlite.lua'
Plug 'mikewest/vimroom'
Plug 'AckslD/nvim-neoclip.lua'
Plug('rajasegar/vim-astro', {branch = 'main'})
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})  -- We recommend updating the parsers on update
Plug('meain/vim-package-info', {['do'] = 'npm install' }) -- npm install -g neovim

vim.call('plug#end')

require('colorbuddy').colorscheme('gruvbuddy')
require('plugins.telescope').after()
