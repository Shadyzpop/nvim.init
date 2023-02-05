return {
  {
    "nvim-telescope/telescope.nvim",
    version = "0.1.0",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
  },
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },
}
