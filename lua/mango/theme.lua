-- local c = require('flexoki.palette')
-- local hl = vim.api.nvim_set_hl

vim.cmd('colorscheme catppuccin-mocha')
vim.keymap.set("n", "<leader>th", "<cmd>Telescope colorscheme<cr>", { noremap = true, silent = true })

-- hl(0, "NvimTreeNormal", { fg = c.light_gray, bg = '#060707' })
-- hl(0, "ColorColumn", { fg = c.light_gray, bg = '#343331' })
-- hl(0, "CursorLine", { fg = vim.NIL, bg = '#343331' })
