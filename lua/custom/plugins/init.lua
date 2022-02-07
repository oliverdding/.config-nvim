return {
    {
        "luukvbaal/stabilize.nvim",
        config = function() require("stabilize").setup() end
    },
    {
        "williamboman/nvim-lsp-installer",
        config = function() require("custom.plugins.lsp_installer") end
    }
}
