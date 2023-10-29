vim.keymap.set("i", "<C-j>", "copilot#Accept(\"\")", {
  noremap = true,
  silent = true,
  expr = true,
  replace_keycodes = false
})
vim.keymap.set("i", "<C-i>", "<Plug>(copilot-suggest)", { silent = true })
vim.keymap.set("i", "<C-k>", "<Plug>(copilot-dismiss)", { silent = true })
vim.keymap.set("i", "<C-l>", "<Plug>(copilot-next)", { silent = true })
vim.keymap.set("i", "<C-h>", "<Plug>(copilot-prev)", { silent = true })
vim.keymap.set("i", "<C-o>", "<cmd>Copilot panel<cr>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C-o>", "<cmd>Copilot panel<cr>", {noremap = true, silent = true})
vim.g.copilot_no_tab_map = true
vim.g.copilot_filetypes = {
  ["dap-repl"] = false,
}
