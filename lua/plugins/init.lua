local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)
require('lazy').setup {
  'tpope/vim-sleuth',
  'hiphish/rainbow-delimiters.nvim',
  'catgoose/nvim-colorizer.lua',
  'voldikss/vim-floaterm',
  require 'plugins.gitsigns',
  require 'plugins.which-key',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.theme',
  require 'plugins.mini',
  require 'plugins.treesitter',
  require 'plugins.lualine',
  require 'plugins.window-picker',
  require 'plugins.autocompletion',
  require 'plugins.copilot',
  require 'plugins.gitlab',
  require 'plugins.gitsigns',
  require 'plugins.indent_line',
  require 'plugins.lint',
  require 'plugins.neo-tree',
  -- require("plugins.obsidian"),
  require 'plugins.typescript',
}
