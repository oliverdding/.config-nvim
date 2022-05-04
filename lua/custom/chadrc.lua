local M = {}

M.options = {relativenumber = true, tabstop = 4, shiftwidth = 4}

M.ui = {theme = "nord"}

M.plugins = {
    user = require "custom.plugins",
    options = {
        lspconfig = {
           setup_lspconf = "custom.plugins.lspconfig",
        },
     },
     override = {
        ["nvim-treesitter/nvim-treesitter"] = {
            ensure_installed = {
                "bash", "c", "cmake", "cpp", "dockerfile", "go", "gomod",
                "html", "http", "java", "javascript", "json5", "latex", "llvm",
                "lua", "make", "markdown", "ninja", "python", "regex", "rust",
                "scala", "toml", "typescript", "yaml"
            }
        },
        ["kyazdani42/nvim-tree.lua"] = {
            view = {side = 'right'},
            git = {
                enable = true,
                ignore = true,
             },
        },
        ["lewis6991/gitsigns.nvim"] = {
            current_line_blame = true,
            current_line_blame_opts = {ignore_whitespace = true}
        }
    }
}

return M
