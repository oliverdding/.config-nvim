return {
    ["goolord/alpha-nvim"] = {
        disable = false,
    },
    ["mfussenegger/nvim-dap"] = {

    },
    ["theHamsta/nvim-dap-virtual-text"] = {
        after = "nvim-dap",
        config = require("custom.plugins.user.dapvt"),
    },
    ["rcarriga/nvim-dap-ui"] = {
        after = "nvim-dap",
        config = require("custom.plugins.user.dapui"),
    },
    ["simrat39/rust-tools.nvim"] = {
        after = "nvim-lspconfig",
        config = require("custom.plugins.user.rust"),
    },
    ["ray-x/go.nvim"] = {
        after = "nvim-lspconfig",
        config = require("custom.plugins.user.go"),
    },
}
