local lsp = require('lsp-zero')

lsp.preset({
    name = 'minimal',
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = false,
})
lsp.ensure_installed({
    'tsserver',
    'eslint',
    'gopls',
    'lua_ls'
})

local cmp = require('cmp')

lsp.setup_nvim_cmp({
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
  })
})

cmp.setup {
    mapping = {
        ['<Enter>'] = cmp.mapping.confirm({ select = true }, {'i'}),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), {'i'}),
    }
}



lsp.setup()
