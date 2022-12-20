local set = vim.opt
local g = vim.g

local TAB_WIDTH = 2

g.mapleader = " "

set.guicursor = ""
set.nu = true
set.relativenumber = true

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
