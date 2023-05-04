return {
  -- undo tree
  {
    "mbbill/undotree",
  },

  -- lsp fidget
  {
    "j-hui/fidget.nvim",
    init = function()
      require("fidget").setup()
    end,
  },

  -- nvim ufo
  -- {
  --   "kevinhwang91/nvim-ufo",
  --   dependencies = {
  --     "kevinhwang91/promise-async",
  --   },
  -- },

  -- themes
  -- {
  --   "marko-cerovac/material.nvim",
  -- },
  {
    "projekt0n/github-nvim-theme",
    tag = "v0.0.7",
  },
  {
    "rebelot/kanagawa.nvim",
  },

  -- highlighter
  {
    "JellyApple102/easyread.nvim",
  },

  -- distant
  -- {
  --   "chipsenkbeil/distant.nvim",
  --   branch = 'v0.2',
  --   init = function()
  --     require('distant').setup {
  --       -- Applies Chip's personal settings to every machine you connect to
  --       --
  --       -- 1. Ensures that distant servers terminate with no connections
  --       -- 2. Provides navigation bindings for remote directories
  --       -- 3. Provides keybinding to jump into a remote file's parent directory
  --       ['*'] = require('distant.settings').chip_default()
  --     }
  --   end
  -- },
}
