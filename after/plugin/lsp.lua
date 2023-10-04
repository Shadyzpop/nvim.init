local lsp = require('lsp-zero')

local lspconfig = require('lspconfig')
local configs = require('lspconfig.configs')

local cmp_autopairs = require('nvim-autopairs.completion.cmp')
require 'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}

require("luasnip.loaders.from_snipmate").lazy_load()
require('nvim-ts-autotag').setup()
local cmp = require("cmp")
local cmp_action = require('lsp-zero').cmp_action()
local cmp_mappings = cmp.mapping.preset.insert({
  ['<Tab>'] = cmp_action.luasnip_supertab(),
  ['<S-Tab'] = cmp_action.luasnip_shift_supertab(),
  ['<C-y'] = cmp.mapping.confirm({ select = true }),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<C-u>'] = cmp.mapping.scroll_docs(-4),
  ['<C-d>'] = cmp.mapping.scroll_docs(4),
  ['<C-e>'] = cmp.mapping.close(),
  ['<CR>'] = vim.NIL,
})

-- mapping didnt work from the preset for some reason?
-- vim.keymap.set("i", "<S-Tab>", cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }))

cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

cmp.setup({
  mapping = cmp_mappings,
})

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  lsp.default_keymaps({ buffer = bufnr })
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
  vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    "tsserver",
    "lua_ls",
    "rust_analyzer",
    "gopls",
    "cssls",
    "pylsp",
    -- "solidity",
    "svelte",
    "tailwindcss",
  },
  handlers = {
    lsp.default_setup,
    lua_ls = function()
      -- (Optional) configure lua language server
      local lua_opts = lsp.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  },
})

configs.solidity = {
  default_config = {
    cmd = { 'nomicfoundation-solidity-language-server', '--stdio' },
    filetypes = { 'solidity' },
    root_dir = lspconfig.util.find_git_ancestor,
    single_file_support = true,
  },
}

require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettier", "prettierd" },
    python = { "black" },
    rust = { "rustfmt" },
    go = { "gofmt" },
    typescript = { "prettier", "prettierd" },
  }
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end
})
