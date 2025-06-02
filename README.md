![image](https://github.com/user-attachments/assets/d0d06e57-4c6d-4048-80fa-bcd552a2db43)

# My Neovim config

## Features

### Keymaps:

- [x] Basic keymaps eg. Ctrl+s to save in both normal and insert mode
- [x] [which-key.nvim](https://github.com/folke/which-key.nvim) to display keymaps
  - lots of custom keymaps for LSP, Telescope, dashboard etc.

### Plugin management:

- [x] [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin installation

### Editor features UI and functional features:

- [x] [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) for statusline
- [x] [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) for highlights
- [x] [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) to display indentation guides
- [x] File Tree [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)

### Code completions,and LSP support:

- [x] [blink-cmp](https://github.com/Saghen/blink.cmp) code completions
- [x] [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) to configure nvim-lspconfig
- [x] [mason.nvim](https://github.com/williamboman/mason.nvim) to manage LSP servers
- [x] [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) to manage LSP server configs
- [x] [mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim) to install LSP servers
- [x] [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) to launch terminal
- [x] [Comment.nvim](https://github.com/numToStr/Comment.nvim) for commenting
- [x] [Comment box](https://github.com/LudoPinelli/comment-box.nvim) for fancy comment styling 
- [x] [barbar](https://github.com/LudoPinelli/comment-box.nvim) for buffer management

---

![image](https://github.com/user-attachments/assets/5a3de81c-fbcb-4d09-a044-b5f5f452d391)


Version Control:

- [x] [gitsigns](https://github.com/lewis6991/gitsigns.nvim) for git signs on lines
- [x] [diffview.nvim](https://github.com/sindrets/diffview.nvim) to view git diff

---

![image](https://github.com/user-attachments/assets/64d3adca-1265-43f9-a917-002c2f896236)



### Personal plugins

These are plugins I included in my seperated user config - a place where I can play around with new plugins and add plugins that aren't a part of the **core** features of my config

- Colorschemes
  - [x] [darcula.nvim](https://github.com/themosthigh/darcula.nvim) colorscheme
  - [x] [kanagawa.nvim](https://github.com/rebelot/kanagawa.nvim)
- Linting & formatting & AI completions
  - [x] [conform.nvim](https://github.com/stevearc/conform.nvim) for formatting
  - [x] [nvim-lint](https://github.com/mfussenegger/nvim-lint) for linting
  - [x] AI completions : [copilot.vim](https://github.com/github/copilot.vim)
- Other code tools
  - [x] [flutter-tools.nvim](https://github.com/akinsho/flutter-tools.nvim) for flutter
  - [x] [ray-x/go.nvim](https://github.com/ray-x/go.nvim) for go treesitter injection, gopher and other goodies

> I might have missed a few things


## Plugin collections

#### [`Snacks.nvim`](https://github.com/folke/snacks.nvim)

Handles dashboard, pickers and other useful features.  
Depends on : 
- [chafa](https://github.com/hpjansson/chafa) to render images

#### [`Mini.nvim`](https://github.com/echasnovski/mini.nvim)
Handles focus highlighting, icons etc.
