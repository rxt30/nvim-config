vim.keymap.set('n', '<ESC>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic quickfix list' })
vim.keymap.set('n', 'me', vim.diagnostic.open_float, { desc = 'Open diagnostic in float window' })
vim.keymap.set('n', 'mf', vim.lsp.buf.hover, { desc = 'Open function definiton in float window' })
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
-- Focus window
vim.keymap.set('n', 'gwh', '<C-w><C-h>', { desc = 'Move focus to the left window' }) 
vim.keymap.set('n', 'gwl', '<C-w><C-l>', { desc = 'Move focus to the right window' }) 
vim.keymap.set('n', 'gwj', '<C-w><C-j>', { desc = 'Move focus to the lower window' }) 
vim.keymap.set('n', 'gwk', '<C-w><C-k>', { desc = 'Move focus to the upper window' }) 
-- Better up/down
vim.keymap.set({ 'n', 'x' }, 'j', "v:count == 0 ? 'gj' : 'j'", { desc = 'Down', expr = true, silent = true})
vim.keymap.set({ 'n', 'x' }, 'k', "v:count == 0 ? 'gk' : 'k'", { desc = 'Up', expr = true, silent = true})
-- Tabs
vim.keymap.set('n', 'tt', ':tab split<CR>', { desc = 'Create new tab', silent = true })
-- Definition in split
vim.keymap.set('n', 'gv', ':vsplit<CR>gd', { desc = 'Jump to definition in split' })
-- Open floating terminal window
vim.keymap.set('n', '<leader>t', ':FloatermToggle<CR>', { desc = 'Open floating terminal window' })
