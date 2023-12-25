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

  -- autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {}
  },

  -- autopairs tags
  {
    "windwp/nvim-ts-autotag"
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
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "+" },
        },
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns

          local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
          end

          -- Navigation
          map('n', ']c', function()
            if vim.wo.diff then return ']c' end
            vim.schedule(function() gs.next_hunk() end)
            return '<Ignore>'
          end, { expr = true })

          map('n', '[c', function()
            if vim.wo.diff then return '[c' end
            vim.schedule(function() gs.prev_hunk() end)
            return '<Ignore>'
          end, { expr = true })

          map('n', '<leader>gk', gs.preview_hunk)
        end,
      })
    end,
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

  -- oil
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({
        -- Your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })

      vim.keymap.set("n", "<leader>o", "<cmd>Oil<cr>", { silent = true })
    end,
  },
}
