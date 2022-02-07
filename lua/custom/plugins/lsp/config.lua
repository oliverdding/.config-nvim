local M = {}

M.setup_lsp = function(attach, capabilities)
    local lsp_installer_servers = require('nvim-lsp-installer.servers')

    local servers = {
        "asm_lsp", -- asm
        "bashls", -- bash
        "clangd", -- c/c++
        "cmake", -- cmake
        "cssls", -- css, less, sass
        "denols", -- javascript, typescript
        "dockerls", -- docker
        "gopls", -- go
        "groovyls", -- groovy
        "html", -- html
        "jsonls", -- json
        "jdtls", -- java
        "texlab", -- latex
        "sumneko_lua", -- lua
        "zeta_note", -- markdown
        "pyright", -- python
        "rust_analyzer", -- rust
        "taplo", -- toml
        "lemminx", -- xml
        "yamlls" -- yaml
    }

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
