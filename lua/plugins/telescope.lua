return {
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
  },
  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/popup.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-symbols.nvim",
      "nvim-telescope/telescope-project.nvim",
      "nvim-telescope/telescope-media-files.nvim",
      -- "nvim-telescope/telescope-ui-select.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
    },
    config = function()
      local telescope = require("telescope")
      local trouble = require("trouble.sources.telescope")

      telescope.setup({
        defaults = {
          sorting_strategy = "ascending",
          layout_strategy = "horizontal",
          layout_config = {
            horizontal = {
              prompt_position = "top",
              preview_width = 0.55,
              results_width = 0.8,
            },
            vertical = {
              mirror = false,
            },
          },
          mappings = {
            i = { ["<C-j>"] = trouble.open },
            n = { ["<C-j>"] = trouble.open },
          },
        },

        extensions = {
          fzf = {
            fuzzy = true,                   -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true,    -- override the file sorter
            case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
          },
          media_files = {
            find_cmd = "rg"
          }
        },

        path_display = { "truncate" },
        no_ignore = true,
        hidden = true,
        file_ignore_patterns = { "node_modules", "build", "target" },
        extensions_list = { "themes", "fzf", 'media_files' },
        color_devicons = true,

        pickers = {
          colorscheme = {
            enable_preview = true,
          },
          find_files = {
            hidden = true,
            file_ignore_patterns = { "node_modules", "build", "target", ".git" },
          },
        },
      })

      -- official plugins
      pcall(require("telescope").load_extension("project"))
      pcall(require("telescope").load_extension("media_files"))
      pcall(require("telescope").load_extension("fzf"))
      -- pcall(require("telescope").load_extension("ui-select"))

      -- other plugins
      -- pcall(require("telescope").load_extension("flutter"))
    end,
  },
}
