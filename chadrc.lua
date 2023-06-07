local M = {}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

M.ui = {
  lsp_semantic_tokens = true,
  telescopt = { style = "bordered" },
  theme_toggle = { "everforest" },
  theme = "everforest",
  statusline = {
    separator_style = "arrow",
  },
  nvdash = {
    load_on_startup = true,
  },
}

return M
