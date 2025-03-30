-- temporarily disabled
local show_comletions = {
  function(cmp)
    cmp.show({})
  end
}




return {
  {
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    dependencies = { 'rafamadriz/friendly-snippets' },

    -- use a release tag to download pre-built binaries
    version = '1.*',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      appearance = {
        nerd_font_variant = 'mono'

      },

      -- (Default) Only show the documentation popup when manually triggered
      completion = {
        documentation = { auto_show = true },
        list = {
          max_items = 200,
          selection = { preselect = false, auto_insert = false },
        },
        menu = {
          max_height = 30
        }
      },
      sources = { default = { 'lsp', 'path', 'snippets', 'buffer' }, },
      fuzzy = { implementation = "prefer_rust_with_warning" },

      keymap = {
        preset = "default",
        -- show with a list of providers
        ['<C-space>'] = show_comletions,
        ['<D-space>'] = show_comletions,
        ["<CR>"] = { "accept", "fallback" }
      },



    },
    opts_extend = { "sources.default" },
  }
}
