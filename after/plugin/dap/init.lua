local dap = require("dap")

vim.keymap.set('n', '<leader>dj', function() dap.run_to_cursor() end)

vim.keymap.set('n', '<leader>dsc', function() dap.continue() end)
vim.keymap.set('n', '<leader>dq', function() dap.terminate() end)

vim.keymap.set('n', '<leader>dso', function() dap.step_over() end)
vim.keymap.set('n', '<leader>dsi', function() dap.step_into() end)
vim.keymap.set('n', '<leader>dsb', function() dap.step_out() end)

vim.keymap.set('n', '<Leader>b', function() dap.toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>B', function() dap.set_breakpoint() end)
vim.keymap.set('n', '<Leader>bm', function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<leader>bl', function() dap.list_breakpoints() end)
vim.keymap.set('n', '<leader>bc', function() dap.clear_breakpoints() end)

vim.keymap.set('n', '<Leader>dr', function() dap.repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() dap.run_last() end)
vim.keymap.set('n', '<leader>dk', function() dap.hover() end)

vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
  require('dap.ui.widgets').hover()
end)

vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
  require('dap.ui.widgets').preview()
end)

vim.keymap.set('n', '<Leader>df', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.frames)
end)

vim.keymap.set('n', '<Leader>ds', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.scopes)
end)

local dap_breakpoint = {
  error = {
    text = "*>",
    texthl = "LspDiagnosticsSignError",
    linehl = "",
    numhl = "",
  },
  rejected = {
    text = "",
    texthl = "LspDiagnosticsSignHint",
    linehl = "",
    numhl = "",
  },
  stopped = {
    text = "⭐️",
    texthl = "LspDiagnosticsSignInformation",
    linehl = "DiagnosticUnderlineInfo",
    numhl = "LspDiagnosticsSignInformation",
  },
}

vim.fn.sign_define("DapBreakpoint", dap_breakpoint.error)
vim.fn.sign_define("DapStopped", dap_breakpoint.stopped)
vim.fn.sign_define("DapBreakpointRejected", dap_breakpoint.rejected)

-- dap.defaults.fallback.external_terminal = {
--   command = "/Applications/Alacritty.app/Contents/MacOS/alacritty",
--   args = {"-e"},
-- }
-- dap.defaults.fallback.force_external_terminal = true
