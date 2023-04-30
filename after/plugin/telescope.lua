require("telescope").load_extension("fzf")

local builtin = require('telescope.builtin')
local themes = require('telescope.themes')

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
vim.keymap.set('n', '<leader>gp', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.keymap.set('n', '<leader>rg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ss', function()
  builtin.spell_suggest(
    themes.get_cursor {
      prompt_title = "Spell Suggest",
      layout_config = {
        height = 0.25,
        width = 0.25,
      }
    }
  )
end)

-- lsp
vim.keymap.set('n', '<leader>ld', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>lr', function()
  builtin.lsp_references(
    themes.get_cursor {
      prompt_title = "References",
      layout_config = {
        height = 0.30,
        width = 0.70,
      }
    }
  )
end)
