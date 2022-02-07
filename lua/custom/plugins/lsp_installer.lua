local lsp_installer = require "nvim-lsp-installer"

lsp_installer.settings {
    ui = {
        icons = {
            server_installed = "﫟",
            server_pending = "",
            server_uninstalled = "✗"
        }
    }
}

-- local servers = require("custom.plugins.lsp_list").lsp_list
-- for _, name in pairs(servers) do
--     local server_is_found, server = lsp_installer.get_server(name)
--     if server_is_found and not server:is_installed() then
--         server:install()
--     end
-- end
