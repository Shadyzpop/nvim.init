-- Some keymaps
--
-- zt - set cursor line to top
-- zb - set cursor line to bottom
--
-- gf - go to file under cursor
--
--
-- -- multi file replace
-- arg /some/path/**/*
-- argdo %s/old/new/ge
-- argdo update
--
--
-- nav in insert
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")
-- vim.keymap.set("i", "<C-j>", "<Down>")
-- vim.keymap.set("i", "<C-k>", "<Up>")

-- general stuff
vim.keymap.set("n", "<Esc>", "<cmd>noh<cr>")
vim.keymap.set("n", "<C-s>", "<cmd>w<cr>")

-- other
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>tk", "<cmd>Telescope keymaps<cr>")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "dd", '"_dd')

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

vim.keymap.set("n", "<leader>wk", ":resize +2<CR>")
vim.keymap.set("n", "<leader>wj", ":resize -2<CR>")
vim.keymap.set("n", "<leader>wh", ":vertical resize -2<CR>")
vim.keymap.set("n", "<leader>wl", ":vertical resize +2<CR>")
vim.keymap.set("n", "<leader>w=", ":vertical resize 80<CR>")

vim.keymap.set("i", "<C-c>", "<Esc>")
