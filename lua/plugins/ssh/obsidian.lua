return {
  'obsidian-nvim/obsidian.nvim',
  lazy = false,
  version = '*',
  keys = {
    { 'gn', ':Obsidian search<CR>', desc = 'Quickswitch obsidian', silent = true },
    { 'gws', ':Obsidian workspace<CR>', desc = 'Switch workspace', silent = true },
    { 'gl', ':Obsidian follow_link<CR>', desc = 'Follow obsidian link', silent = true },
    { 'gj', ':Obsidian dailies -2 2<CR>', desc = 'Go to journal', silent = true },
    { 'ss', ':Obsidian toggle_checkbox<CR>', desc = 'Switch task status', silent = true },
  },
  opts = {
    workspaces = {
      {
        name = 'nodedaemon',
        path = '~/vaults/nodedaemon',
      },
    },
    legacy_commands = false,
  },
}
