local c = require('flexoki.palette')
local hl = vim.api.nvim_set_hl

vim.cmd('colorscheme flexoki')
vim.keymap.set("n", "<leader>th", "<cmd>Telescope colorscheme<cr>", { noremap = true, silent = true })

hl(0, "NvimTreeNormal", { fg = c.light_gray, bg = '#060707' })
hl(0, "ColorColumn", { fg = c.light_gray, bg = '#343331' })
hl(0, "CursorLine", { fg = vim.NIL, bg = '#343331' })

-- listchars
hl(0, "NonText", { fg = c.light_gray })
hl(0, "SpecialKey", { fg = c.light_gray })
hl(0, "Whitespace", { fg = c.light_gray })
