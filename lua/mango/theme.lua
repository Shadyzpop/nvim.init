local opts = {
  theme_style = 'dark_default',
  dark_sidebar = true,
  dark_float = true,
}

require("github-theme").setup(opts)

local avail_themes = {
  "dark",
  "dimmed",
  "dark_default",
  "dark_colorblind",
  "light",
  "light_default",
  "light_colorblind",
}

vim.cmd("highlight ColorColumn ctermbg=0 guibg=#1e222a")
-- toggle themes from avail_themes
vim.keymap.set("n", "<leader>th", function ()
  local current_theme = vim.g.github_theme_style
  local next_theme = avail_themes[1]
  for i, theme in ipairs(avail_themes) do
    if theme == current_theme then
      next_theme = avail_themes[i + 1]
      if next_theme == nil then
        next_theme = avail_themes[1]
      end
      break
    end
  end
  opts.theme_style = next_theme
  require("github-theme").setup(opts)

  vim.cmd("highlight ColorColumn ctermbg=0 guibg=#1e222a")
  vim.g.github_theme_style = next_theme
end, { noremap = true, silent = true })
