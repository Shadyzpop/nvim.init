local dap = require('dap')

dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/local/opt/llvm/bin/lldb-vscode',
  name = 'lldb'
}

dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
    runInTerminal = false
  },
  {
    name = 'Attach',
    type = 'lldb',
    request = 'attach',
    pid = function()
      return vim.fn.input('Process ID: ')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
    runInTerminal = false
  },
}

dap.configurations.c = dap.configurations.cpp

dap.configurations.rust = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      vim.cmd('!cargo build')
      return vim.fn.getcwd() .. '/target/debug/' .. vim.fn.input('Ex Name: ')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
    runInTerminal = false
  },
  {
    name = 'Attach',
    type = 'lldb',
    request = 'attach',
    pid = function()
      return vim.fn.input('Process ID: ')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
    runInTerminal = false
  },
}
