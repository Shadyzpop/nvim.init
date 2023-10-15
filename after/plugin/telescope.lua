local builtin = require('telescope.builtin')
local themes = require('telescope.themes')
local actions = require('telescope.actions')

local easypick = require("easypick")
require("telescope").load_extension("fzf")
require("telescope").load_extension('harpoon')

local def_map = {
  n = {
    ["gg"] = actions.move_to_top,
    ["G"] = actions.move_to_bottom,
    ["<"] = actions.toggle_selection,
    ["a"] = actions.toggle_all,
    ["-"] = actions.drop_all,
    ["<C-v>"] = actions.file_vsplit,
    ["<C-s>"] = actions.file_split,
    ["<C-q>"] = actions.smart_send_to_qflist,
    ["<C-l>"] = actions.smart_send_to_loclist,
    ["<C-d>"] = actions.delete_buffer,
  },
  i = {
    ["<C-v>"] = actions.file_vsplit,
    ["<C-s>"] = actions.file_split,
    ["<C-q>"] = actions.smart_send_to_qflist,
    ["<C-l>"] = actions.smart_send_to_loclist,
  },
}

require("telescope").setup({
  defaults = {
    file_ignore_patterns = { "node_modules", ".git" },
    border = true,
    cache_picker = {
      num_pickers = 10,
    },
  },
  pickers = {
    git_files = {
      mappings = def_map,
    },
    buffers = {
      mappings = def_map,
    },
    find_files = {
      mappings = def_map,
    },
    live_grep = {
      mappings = def_map,
    },
    grep_string = {
      mappings = def_map,
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,                   -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true,    -- override the file sorter
      case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    }
  }
})

-- util
vim.keymap.set('n', '<leader>te', builtin.resume, {})
vim.keymap.set('n', '<leader>cm', builtin.commands, {})
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

-- files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.git_files, {})
vim.keymap.set('n', '<leader>gp', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>gw', builtin.grep_string, {})
vim.keymap.set('n', '<leader>rg', builtin.live_grep, {})

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

-- easypick
easypick.setup({
  pickers = {
    {
      name = "ls",
      command = "ls",
      previewer = easypick.previewers.default()
    }
  }
})
