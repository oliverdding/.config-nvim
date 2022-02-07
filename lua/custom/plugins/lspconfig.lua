local M = {}

M.setup_lsp = function(attach, capabilities)
    local lspconfig = require "lspconfig"
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
        "texlab", -- latex
        "sumneko_lua", -- lua
        "zeta_note", -- markdown
        "pyright", -- python
        "rust_analyzer", -- rust
        "taplo", -- toml
        "lemminx", -- xml
        "yamlls", -- yaml
    }
    for _, name in pairs(servers) do
        local server_is_found, server = lsp_installer.get_server(name)
        if server_is_found and not server:is_installed() then
            print("Installing " .. name)
            server:install()
        end
    end

    for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
            on_attach = attach,
            capabilities = capabilities,
            flags = {debounce_text_changes = 150}
        }
    end
end

return M
