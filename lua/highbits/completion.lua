local cmp = require "cmp"
if cmp == nil then
    return
end

cmp.setup({
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = {
      { name = 'nvim_lsp' },
      { name = 'buffer' },
    },
    snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
    },
})
