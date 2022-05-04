local M = {}

M.setup_lsp = function(attach, capabilities)
    local lspconfig = require "lspconfig"

    local servers = {
        "asm_lsp", -- asm
        "bashls", -- bash
        "clangd", -- c/c++
        "cmake", -- cmake
        "cssls", -- css, less, sass
        "dockerls", -- docker
        "gopls", -- go
        "groovyls", -- groovy
        "html", -- html
        "jsonls", -- json
        "jdtls", -- java
        "texlab", -- latex
        "tsserver", -- javascript, typescript
        "sumneko_lua", -- lua
        "pyright", -- python
        "rust_analyzer", -- rust
        "taplo", -- toml
        "lemminx", -- xml
        "yamlls" -- yaml
    }

    for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
           on_attach = attach,
           capabilities = capabilities,
           flags = {
              debounce_text_changes = 150,
           },
        }
    end

end

return M
