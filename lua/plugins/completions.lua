-- temporarily disabled
local show_comletions = {
  function(cmp)
    cmp.show({})
  end
}


return {

  -- Snippet engine
  {
    "L3MON4D3/LuaSnip",
    lazy = true,
    dependencies = {
      {
        "rafamadriz/friendly-snippets",
        config = function()
          require("luasnip.loaders.from_vscode").lazy_load()
        end,
      },
    },
    opts = {
      history = true,
      delete_check_events = "TextChanged",
    },
  },

  -- Completions provider
  {
    'saghen/blink.cmp',
    -- version = '1.*',

    opts = {
      -- appearance for some reason
      appearance = {
        nerd_font_variant = 'mono'
      },

      -- snippet engine
      snippets = { preset = 'luasnip' },

      -- completion sources
      sources = {
        default = {
          'lsp',
          'path',
          'buffer',
          -- 'snippets',
        },
        providers = {
          lsp = { score_offset = 10 },
          snippets = { score_offset = -10 }
        },
      },


      -- (Default) Only show the documentation popup when manually triggered
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 0,
        },
        list = {
          max_items = 200,
          selection = { preselect = false, auto_insert = false },
        },
        menu = { max_height = 30 }
      },


      -- pattern matching
      fuzzy = { implementation = 'lua', sorts = { "score" } },

      -- keymaps
      keymap = {
        preset = "default",
        -- show with a list of providers
        ['<C-space>'] = show_comletions,
        ['<D-space>'] = show_comletions,
        ["<CR>"] = { "accept", "fallback" }
      },
    },
    opts_extend = { "sources.default" },
  },
}
