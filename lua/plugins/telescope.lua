return {
  {
    "nvim-telescope/telescope.nvim",
    version = "0.1.0",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    init = function()
      require("telescope").setup {
        defaults = {
          file_ignore_patterns = { "node_modules", ".git" },
        },
        extensions = {
          fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
          }
        }
      }
    end,
  },
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },
}
