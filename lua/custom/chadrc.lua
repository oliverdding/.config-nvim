local M = {}

M.options = {relativenumber = true, tabstop = 4, shiftwidth = 4}

M.ui = {italic_comments = true, theme = "gruvbox"}

M.plugins = {
    install = require "custom.plugins",
    status = {colorizer = true},
    options = {
        lspconfig = {setup_lspconf = "custom.plugins.lsp.config"},
        statusline = {
            style = "arrow" -- default, round , slant , block , arrow
        }
    },
    default_plugin_config_replace = {
        nvim_treesitter = {
            ensure_installed = {
                "bash", "c", "cmake", "cpp", "dockerfile", "go", "gomod",
                "html", "http", "java", "javascript", "json5", "latex", "llvm",
                "lua", "make", "markdown", "ninja", "python", "regex", "rust",
                "scala", "toml", "typescript", "yaml"
            }
        },
        nvim_tree = {
            view = {side = 'right', auto_resize = true},
            trash = {cmd = "rmtrash", require_confirm = true}
        },
        gitsigns = {
            current_line_blame = true,
            current_line_blame_opts = {ignore_whitespace = true}
        }
    }
}

return M
