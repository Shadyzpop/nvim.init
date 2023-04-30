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
}
