local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  print("Fetching lazy plugin manager ...")
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
  print("Done fetching lazy plugin manager!")
end
vim.opt.rtp:prepend(lazypath)

-- plugins
require("lazy").setup({ import = "plugins" }, {
  install = {
    colorscheme = { "kanagawa" },
  },
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
  config = {
    defaults = {
      lazy = true,
    }
  }
})
