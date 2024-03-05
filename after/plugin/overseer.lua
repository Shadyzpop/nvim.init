local overseer = require('overseer')

overseer.setup()

vim.keymap.set('n', '<leader>rq', '<cmd>OverseerQuickAction<cr>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>rn', '<cmd>OverseerRun<cr>', { noremap = true, silent = true })
