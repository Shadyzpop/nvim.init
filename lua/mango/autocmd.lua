vim.api.nvim_create_augroup('bufcheck', { clear = true })

-- auto format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("BufAutoFormat", { clear = true }),
  pattern = "*.js,*.ts,*.tsx,*.jsx,*.lua",
  callback = function()
    vim.cmd([[%s/\s\+$//e]])
    vim.lsp.buf.format()
  end
})

-- return to the last edit position when opening files
vim.api.nvim_create_autocmd('BufReadPost', {
  group    = 'bufcheck',
  pattern  = '*',
  callback = function()
    -- if fn.line("'\"") > 0 and fn.line("'\"") <= fn.line("$") then
    --   fn.setpos('.', fn.getpos("'\""))
    --   -- vim.cmd('normal zz') -- how do I center the buffer in a sane way??
    --   vim.cmd('silent! foldopen')
    -- end
  end
})

-- save the last edit position when leaving buffers
vim.api.nvim_create_autocmd('FocusLost', {
  group    = 'bufcheck',
  pattern  = '*',
  callback = function()
    vim.cmd('silent! wa')
  end
})

-- on vim leave, save all files
vim.api.nvim_create_autocmd('VimLeave', {
  group    = 'bufcheck',
  pattern  = '*',
  callback = function()
    vim.cmd('silent! wa')
  end
})

-- on buff enter and lsp active, show symbols
vim.api.nvim_create_autocmd('BufEnter', {
  group    = 'bufcheck',
  pattern  = '*',
  callback = function()
    local currwin = vim.api.nvim_get_current_win()
    local bufnr = vim.api.nvim_get_current_buf()
    vim.defer_fn(function()
      -- if the outline buffer doesn't exist, or if its hidden open it
      if vim.fn.bufexists('DocsView') == 0 or vim.fn.bufwinnr('DocsView') == -1 then
        -- print('DocsViewOpen')
      end
      if vim.fn.bufexists('OUTLINE') == 0 or vim.fn.bufwinnr('OUTLINE') == -1 then
        vim.cmd('SymbolsOutlineOpen')
        -- timeout
        vim.defer_fn(function()
          vim.api.nvim_set_current_win(currwin)
        end, 200)
      end
    end, 10)
  end
})
