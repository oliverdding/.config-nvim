local M = {}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

M.ui = {
  lsp_semantic_tokens = true,
  transparency = true,
  telescopt = { style = "bordered" },
  theme_toggle = { "gruvbox" },
  theme = "gruvbox",
  statusline = {
    separator_style = "arrow",
  },
  nvdash = {
    load_on_startup = true,
  },
}

return M
