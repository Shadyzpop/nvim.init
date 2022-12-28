vim.keymap.set("n", "<leader>gst", "<cmd>Git<cr>")

local Mango_Fugitive = vim.api.nvim_create_augroup("Mango_Fugitive", {})

local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
    group = Mango_Fugitive,
    pattern = "*",
    callback = function()
        if vim.bo.ft ~= "fugitive" then
            return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = {buffer = bufnr, remap = false}
        vim.keymap.set("n", "<leader>p", function()
            vim.cmd('Git push')
        end, opts)

        -- rebase always
        vim.keymap.set("n", "<leader>P", function()
            vim.cmd('Git pull --rebase')
        end, opts)

        -- checkout interactive
        vim.keymap.set("n", "<leader>ci", function()
            vim.cmd('Telescope git_branches')
        end, opts)

        -- open in browser
        vim.keymap.set("n", "<leader>o", function()
            vim.cmd('!gh repo view --web')
        end, opts)

        -- NOTE: It allows me to easily set the branch i am pushing and any tracking
        -- needed if i did not set the branch up correctly
        vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts);
    end,
})
