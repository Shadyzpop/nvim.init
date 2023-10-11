local set = vim.opt
---@diagnostic disable-next-line: unused-local
local g = vim.g

g.mapleader = " "

local TAB_WIDTH = 2

set.guicursor = ""
set.nu = true
set.relativenumber = true

-- disable mouse
set.mouse = nil

set.tabstop = TAB_WIDTH
set.softtabstop = TAB_WIDTH
set.shiftwidth = TAB_WIDTH
set.expandtab = true

set.smartindent = true

set.wrap = false

set.swapfile = false
set.backup = false

set.undodir = os.getenv("HOME") .. "/.nvim/undodir"
set.undofile = true

set.hlsearch = false
set.incsearch = true
set.termguicolors = true

set.scrolloff = 8
set.signcolumn = "yes"
set.isfname:append("@-@")

set.updatetime = 50
set.colorcolumn = "80"
set.cmdheight = 1
-- set.showcmd = false

set.splitbelow = true
set.splitright = true

-- vim.api.nvim_set_keymap("i", "<Space>", string.rep(" ", TAB_WIDTH), {noremap = true, silent = true})
-- let g:omni_sql_default_compl_type = 'syntax'
--
g.omni_sql_default_compl_type = "syntax"
g.ftplugin_sql_omni_key = "<C-x><C-o>"

vim.opt.termguicolors = true
