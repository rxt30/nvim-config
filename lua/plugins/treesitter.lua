return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  branch = 'main',
  opts = {
    auto_install = true,
    highlight = {
      enable = true,
    },
    indent = { enable = true },
  },
}
