local cmp = require('cmp')

cmp.setup(
  {
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end
    },
    mapping = {
      ['<C-p>'] = cmp.mapping.select_prev_item(),
      ['<C-n>'] = cmp.mapping.select_next_item(),
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm(
        {
          behavior = cmp.ConfirmBehavior.Replace,
          select = true
        }
      ),
      ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
      ['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 's' })
    },
    sources = cmp.config.sources(
      {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'luasnip' }
      }
    ),
    formatting = {
      format = require('lspkind').cmp_format(
        {
          with_text = false,
          maxwidth = 50,
          mode = 'symbol_text',
          menu = (
            {
              buffer = '[Buffer]',
              luasnip = '[LuaSnip]',
              nvim_lua = '[Lua]',
              latex_symbols = '[Latex]'
            }
          )
        }
      )
    }
  }
)
