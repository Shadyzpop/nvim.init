-- -- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
  blue   = '#80a0ff',
  cyan   = '#79dac8',
  black  = '#080808',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local gruvboxColors = {
  bg0 = '#1d2021',
  bg1 = '#282828',
  bg2 = '#3c3836',
  bg3 = '#504945',
  bg4 = '#665c54',
  fg0 = '#fbf1c7',
  fg1 = '#ebdbb2',
  fg2 = '#d5c4a1',
  fg3 = '#bdae93',
  fg4 = '#a89984',
  red = '#fb4934',
  orange = '#fe8019',
  yellow = '#fabd2f',
  green = '#b8bb26',
  aqua = '#8ec07c',
  blue = '#83a598',
  purple = '#d3869b',
}

local bubbles_theme = {
  normal = {
    a = { fg = gruvboxColors.bg2, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = gruvboxColors.bg2, bg = gruvboxColors.bg2 },
  },

  insert = { a = { fg = gruvboxColors.bg2, bg = gruvboxColors.orange } },
  visual = { a = { fg = gruvboxColors.bg2, bg = gruvboxColors.aqua } },
  replace = { a = { fg = gruvboxColors.bg2, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = gruvboxColors.bg2 },
    b = { fg = colors.white, bg = gruvboxColors.bg2 },
    c = { fg = gruvboxColors.bg2, bg = gruvboxColors.bg2 },
  },
}

require('lualine').setup {
  options = {
    theme = 'auto',
    component_separators = '-',
    -- section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_c = { 'fileformat' },
    lualine_b = {'branch', 'filename', 'diff', 'diagnostics', 'fileformat'},
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
