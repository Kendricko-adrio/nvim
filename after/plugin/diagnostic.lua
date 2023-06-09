vim.diagnostic.config({
    virtual_text = {
        -- source = "always",  -- Or "if_many"
        prefix = '●', -- Could be '■', '▎', 'x'
    },
    severity_sort = true,
    float = {
        source = "always", -- Or "if_many"
    },
})


vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        -- Enable underline, use default values
        underline = true,
        -- Enable virtual text, override spacing to 4
        virtual_text = {
            spacing = 4,
        },
        -- Use a function to dynamically turn signs off
        -- and on, using buffer local variables
        signs = function(namespace, bufnr)
            return vim.b[bufnr].show_signs == true
        end,
        -- Disable a feature
        update_in_insert = true,

    }
)
