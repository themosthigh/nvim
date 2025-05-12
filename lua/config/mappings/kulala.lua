-- FIXME: uninstalled
local rest = require("kulala")


require("which-key").add({
  { "<leader>rr", rest.run,         desc = "run" },
  { "<leader>rR", rest.replay,      desc = "replay" },
  { "<leader>rs", rest.scratchpad,  desc = "scratchpad" },
  { "<leader>ry", rest.copy,        desc = "copy" },
  { "<leader>rc", rest.close,       desc = "close" },
  { "<leader>rt", rest.toggle_view, desc = "toggle_view" },
  { "<leader>rp", rest.jump_prev,   desc = "jump_prev" },
  { "<leader>rn", rest.jump_next,   desc = "jump_next" },
})
