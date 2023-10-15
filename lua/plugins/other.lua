return {
  -- better vim
  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
    opts = {
      disabled_filetypes = {
        "qf", "netrw", "NvimTree", "lazy", "mason", "Outline", "text", "harpoon", "help", "lspinfo",
        "OverseerList", "oil", "fugitive" },
    }
  },
}
