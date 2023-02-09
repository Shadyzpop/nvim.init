local dap = require("dap")

dap.adapters.delve = {
  type = "server",
  port = '${port}',
  executable = {
    command = 'dlv',
    -- 'dap',
    -- '--listen=127.0.0.1:${port}',
    -- '--api-version=2',
    -- '--accept-multiclient',
    args = {
      'dap',
      '--listen=127.0.0.1:${port}',
      '--api-version=2',
      '--accept-multiclient',
    },
  },
}

dap.configurations.go = {
  {
    type = 'delve',
    name = 'Debug',
    request = 'launch',
    showLog = true,
    program = '${file}',
  },
  {
    type = 'delve',
    name = 'Debug test', -- configuration for debugging test files
    request = 'launch',
    showLog = true,
    program = '${file}',
    mode = 'test',
  },
  {
    type = 'delve',
    name = 'Debug test (go.mod)', -- configuration for debugging test functions
    request = 'launch',
    showLog = true,
    program = './${relativeFileDirname}',
    mode = 'test',
  },
}
