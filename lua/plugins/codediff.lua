return {
  'esmuellert/codediff.nvim',
  dependencies = { 'MunifTanjim/nui.nvim' },
  cmd = 'CodeDiff',
  opts = {
    keymaps = {
      view = {
        next_hunk = 'cc',
        prev_hunk = 'cC',
        next_file = 'cf',
        prev_file = 'cF',
      },
    },
  },
}
