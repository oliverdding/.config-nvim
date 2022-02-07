local M = {}

M.setup_lsp = function(attach, capabilities)
    -- local lspconfig = require "lspconfig"
    local lsp_installer_servers = require('nvim-lsp-installer.servers')

    local servers = require("custom.plugins.lsp_list").lsp_list
    -- for _, lsp in ipairs(servers) do
    --     lspconfig[lsp].setup {
    --         on_attach = attach,
    --         capabilities = capabilities,
    --         flags = {debounce_text_changes = 150}
    --     }
    -- end
    for _, server_name in pairs(servers) do
        local server_available, server = lsp_installer_servers.get_server(server_name)
        if server_available then
            server:on_ready(function ()
                local opts = {
                    on_attach = attach,
                    capabilities = capabilities,
                    flags = {debounce_text_changes = 150}
                }
                server:setup(opts)
            end)
            if not server:is_installed() then
                server:install()
            end
        end
    end
end

return M
