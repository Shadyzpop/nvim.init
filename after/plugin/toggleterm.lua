local opts = {buffer = 0}
-- vim.keymap.del('n', '<C-\\>')

vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<cr>', opts)
vim.keymap.set('t', '<esc>', '<C-\\><C-N>', opts)
-- vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
