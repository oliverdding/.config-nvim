return {
    -- ui
    {
        "luukvbaal/stabilize.nvim",
        config = function() require("stabilize").setup() end
    }, -- lsp-installer
    {"williamboman/nvim-lsp-installer"}
}
