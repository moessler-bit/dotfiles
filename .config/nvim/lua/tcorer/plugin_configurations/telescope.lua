require("telescope").setup({
    defaults = {
        layout_config = {
            vertical = { width = 0.5 },
            horizontal = { width = 0.7 }
            -- other layout configuration here
        },
    }
})
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('TelescopeLspKeymaps', {}),
    callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gi', require("telescope.builtin").lsp_implementations, opts)   -- go implementations
        vim.keymap.set('n', 'gtd', require("telescope.builtin").lsp_type_definitions, opts) -- go to definitions of type
        vim.keymap.set('n', 'gr', require("telescope.builtin").lsp_references, opts)
    end,
})

require('telescope').extensions.dap.configurations()
-- <C-t>jump back
