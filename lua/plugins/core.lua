return {
  -- copilot.nvim
  "github/copilot.vim",

  -- commenting
  {
    "numToStr/Comment.nvim",
    init = function()
      require("Comment").setup()
    end,
  },

  -- nvim tree
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      lazy = true,
    },
    version = "nightly",
  },

  -- indents blankline
  {
    "lukas-reineke/indent-blankline.nvim",
  },

  -- autopairs
  {
    "windwp/nvim-autopairs",
  },

  -- surround
  {
    "kylechui/nvim-surround",
    version = "*",
    init = function()
      require("nvim-surround").setup()
    end,
  },

  -- terminal
  {
    "akinsho/nvim-toggleterm.lua",
    version = "*",
  },

  -- lualine
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      lazy = true,
    },
  },

  -- git
  {
    "tpope/vim-fugitive",
  },

  -- trouble
  {
    "folke/trouble.nvim",
    init = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
  },

  -- harpoon
  {
    "ThePrimeagen/harpoon",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
