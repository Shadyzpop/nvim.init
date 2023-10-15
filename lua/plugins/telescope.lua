return {
  {
    "nvim-telescope/telescope.nvim",
    version = "0.1.4",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  { 'axkirillov/easypick.nvim',                 dependencies = 'nvim-telescope/telescope.nvim' }
  -- {
  --   "telescope.nvim",
  --   dependencies = {
  --     "nvim-telescope/telescope-fzf-native.nvim",
  --     build = "make",
  --   },
  -- },
}
