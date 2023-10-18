return {
  -- themes
  -- {
  --   "marko-cerovac/material.nvim",
  -- },
  -- {
  --   "projekt0n/github-nvim-theme",
  --   tag = "v0.0.7",
  -- },
  -- {
  --   "rebelot/kanagawa.nvim",
  -- },
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   config = function()
  --     require("catppuccin").setup({
  --       dim_inactive = {
  --         enabled = true,
  --       }
  --     })
  --     vim.cmd("colorscheme catppuccin-mocha")
  --   end,
  -- },
  { 'stevedylandev/flexoki-nvim', name = 'flexoki' },

  -- highlighter
  {
    "JellyApple102/easyread.nvim",
  },

  -- dressing
  {
    'stevearc/dressing.nvim',
    opts = {},
    config = function()
      require("dressing").setup()
    end
  },
}
