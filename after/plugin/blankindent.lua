local highlight = {
  "CyanLine",
}

local hooks = require "ibl.hooks"
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "CyanLine", { fg = "#8be9fd" })
end)

require("ibl").setup({
  scope = {
    enabled = true,
    highlight = { "Function", "Label", "CyanLine" },
  }
})
