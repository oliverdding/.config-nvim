return {
    ["simrat39/rust-tools.nvim"] = {
        after = "nvim-lspconfig",
        config = require("custom.plugins.user.rust"),
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
}
