vim.keymap.set("i", "<C-j>", "copilot#Accept(\"\")", {expr = true, silent = true})
vim.keymap.set("i", "<C-k>", "<Plug>(copilot-suggest)", {silent = true})
vim.keymap.set("i", "<C-k>", "<Plug>(copilot-dismiss)", {silent = true})
vim.keymap.set("i", "<C-l>", "<Plug>(copilot-next)", {silent = true})
vim.keymap.set("i", "<C-h>", "<Plug>(copilot-prev)", {silent = true})
vim.g.copilot_no_tab_map = true
