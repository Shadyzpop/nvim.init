return {
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v1.x",
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    },
  },

  -- copilot.nvim
  "github/copilot.vim",

  -- commenting
  {
    "numToStr/Comment.nvim",
    init = function()
      require("Comment").setup()
    end,
  },

  -- treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
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
    init = function()
      require("toggleterm").setup({
        size = 20,
        shade_filetypes = {},
        shade_terminals = true,
        shading_factor = 1,
        start_in_insert = true,
        persist_size = true,
        direction = "horizontal",
        close_on_exit = true,
      })
    end,
  },

  -- lualine
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      lazy = true,
    },
  },

  -- theme
  {
    "marko-cerovac/material.nvim",
  },

  -- git
  {
    "tpope/vim-fugitive",
  },
}
