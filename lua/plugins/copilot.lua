return {
  {
    'zbirenbaum/copilot.lua',
    config = function()
      require('copilot').setup {
        suggestion = { enabled = false },
        panel = { enabled = false },
        copilot_model = 'gpt-4o-copilot',
        copilot_node_command = '/bin/node',
        filetypes = {
          javascript = true,
          typescript = true,
          typescriptreact = true,
          lua = true,
          markdown = true,
          sh = true,
          json = true,
          yaml = true,
          ['*'] = false,
        },
      }
    end,
  },
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'zbirenbaum/copilot.lua' },
      { 'nvim-lua/plenary.nvim', branch = 'master' },
    },
    build = 'make tiktoken',
    config = function()
      require('CopilotChat').setup()
      vim.keymap.set('n', 'ght', ':CopilotChatToggle<CR>', { desc = 'Toggle copilot chat window', silent = true })
    end,
  },
}
