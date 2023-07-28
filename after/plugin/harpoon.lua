local harpoon = require("harpoon")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

harpoon.setup({
  global_settings = {
    save_on_toggle = true,
    save_on_change = true,
  },
})

vim.keymap.set('n', '<leader>fm', function()
  mark.add_file()
end)

vim.keymap.set('n', '<leader>fr', function()
  ui.toggle_quick_menu()
end)

vim.keymap.set('n', '<leader>1', function()
  ui.nav_file(1)
end)
vim.keymap.set('n', '<leader>2', function()
  ui.nav_file(2)
end)
vim.keymap.set('n', '<leader>3', function()
  ui.nav_file(3)
end)
vim.keymap.set('n', '<leader>4', function()
  ui.nav_file(4)
end)
vim.keymap.set('n', '<leader>5', function()
  ui.nav_file(5)
end)
vim.keymap.set('n', '<leader>6', function()
  ui.nav_file(6)
end)

vim.keymap.set('n', '<C-l>', function()
  ui.nav_next()
end)

vim.keymap.set('n', '<C-h>', function()
  ui.nav_prev()
end)
