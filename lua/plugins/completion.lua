local cmp = require('cmp')
local lspkind = require('lspkind')
local luasnip = require('luasnip')

luasnip.filetype_extend("dart", {"flutter"})
require("luasnip/loaders/from_vscode").lazy_load()

lspkind.init {
  with_text = true,
  symbol_map = {
    Text = "",
    Method = "ƒ",
    Function = "ﬦ",
    Constructor = "",
    Variable = "",
    Class = "",
    Interface = "ﰮ",
    Module = "",
    Property = "",
    Unit = "",
    Value = "",
    Enum = "了",
    Keyword = "",
    Snippet = "﬌",
    Color = "",
    File = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "",
  },
}

cmp.setup({
  snippet = {
    expand = function(args) luasnip.lsp_expand(args.body) end,
  },
	formatting = {
    format = function(entry, vim_item)
      vim_item.kind = string.format("%s %s", lspkind.presets.default[vim_item.kind], vim_item.kind)
      vim_item.menu = ({ nvim_lsp = "[LSP]", buffer = "[BUF]" })[entry.source.name]
      return vim_item
    end,
  },
  mapping = {
    ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-y>'] = cmp.config.disable,
    ['<C-e>'] = cmp.mapping({ i = cmp.mapping.abort(), c = cmp.mapping.close() }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ["<Tab>"] = function(fallback)
       if cmp.visible() then
          cmp.select_next_item()
       elseif luasnip.expand_or_jumpable() then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
       else
          fallback()
       end
    end,
    ["<S-Tab>"] = function(fallback)
       if cmp.visible() then
          cmp.select_prev_item()
       elseif luasnip.jumpable(-1) then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
       else
          fallback()
       end
    end,
  },
  sources = cmp.config.sources({ { name = 'nvim_lsp' }, { name = 'luasnip' } }, { { name = 'buffer' } })
})
