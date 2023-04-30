require("toggleterm").setup({
  size = function (term)
    if term.direction == "horizontal" then
      return 8
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = -40,
  start_in_insert = true,
  persist_size = true,
  persist_mode = true,
  direction = "horizontal",
  close_on_exit = true,
  autochdir = true,
  autoscroll = true,
})

vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<cr>')
vim.keymap.set('n', '<leader>ts', '<cmd>ToggleTerm direction=horizontal<cr>')
vim.keymap.set('n', '<leader>tv', '<cmd>ToggleTerm direction=vertical<cr>')

-- send exit to term if any
vim.keymap.set('n', '<leader>tq', '<cmd>1TermExec cmd="exit"<cr>')

vim.keymap.set('n', '<leader>tx', function ()
  local cmd = vim.fn.input('Command: ')

  if cmd == '' then
    return
  end

  vim.cmd('1TermExec cmd="' .. cmd .. '" <CR>')
end)

vim.keymap.set('t', '<ESC>', '<C-\\><C-N>')
vim.keymap.set('t', '<C-o>', '<C-\\><C-o>:')
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]])
