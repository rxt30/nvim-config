return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.*',
  ---@module blink.cmp
  ---@type blink.cmp.config
  opts = {
    completion = { list = { selection = { preselect = false } }, documentation = { auto_show = true } },
    keymap = {
      preset = 'default',
      ['<CR>'] = { 'accept', 'fallback' },
      ['<Tab>'] = { 'select_next', 'fallback' },
      ['<S-Tab>'] = { 'select_prev', 'fallback' },
    },
    fuzzy = { implementation = 'lua' },
    signature = { enabled = true },
  },
}
