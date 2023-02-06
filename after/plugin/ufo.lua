require('ufo').setup({
    provider_selector = function(bufnr, filetype, buftype)
        return {'treesitter', 'indent'}
    end
})

-- vim.keymap.set('n', 'K', function()
--     local winid = require('ufo').peekFoldedLinesUnderCursor()
--     if not winid then
--         vim.lsp.buf.hover()
--     end
-- end, {noremap = false, silent = true})
