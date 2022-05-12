return function()
    local opt = {
        gofmt = 'gopls',
        lsp_cfg = true,
        lsp_keymaps = false,
        dap_debug_keymap = false,
      }
    require('go').setup(opt)
end
