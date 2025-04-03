local wk = require("which-key")


local M = require("telescope.builtin")
local P = require("snacks.picker")

wk.add {
  { "<leader>fa",
    function() M.find_files({ no_ignore = true }) end,
    desc = "All Files",
  },
  { "<leader>fr",  P.resume,                           desc = "Resume search" },
  { "<leader>fn",  P.notifications,                    desc = "Notifications" },
  { "<leader>ff",  P.files,                            desc = "Find Files" },
  { "<leader>fw",  P.grep,                             desc = "Live Grep" },
  { "<leader>fz",  P.grep_buffers,                     desc = "Current Buffer" },
  { "<leader>fb",  P.buffers,                          desc = "Buffer list" },
  -- Other
  { "<leader>fs",  P.colorschemes,                     desc = "Colorschemes" },
  { "<leader>fh",  P.help,                             desc = "Help Tags" },
  { "<leader>fd",  P.diagnostics_buffer,               desc = "Diagnostics (buffer)" },
  { "<leader>fD",  P.diagnostics,                      desc = "Diagnostics" },
  { "<leader>fc",  P.commands,                         desc = "Commands" },
  { "<leader>fm",  P.man,                              desc = "Man Pages" },
  { "<leader>fM",  "<cmd> Telescope media_files <cr>", desc = "Media files" },
  { "<leader>fk",  M.keymaps,                          desc = "Keymaps" },
  { "<leader>fe",  M.symbols,                          desc = "Emoji" },
  -- git stuff
  { "<leader>fgs", P.git_status,                       desc = "Git Status" },
  { "<leader>fgb", P.git_branches,                     desc = "Git Branches" },
  { "<leader>fgf", P.git_files,                        desc = "Git Files" },

  -- lsp stuff
  { "<leader>fld", P.lsp_definitions,                  desc = "LSP definitions" },
  { "<leader>flt", P.lsp_type_definitions,             desc = "LSP type definitions" },
  { "<leader>fli", P.lsp_implementations,              desc = "LSP implementations" },
  { "<leader>flr", P.lsp_references,                   desc = "LSP references" },
}
