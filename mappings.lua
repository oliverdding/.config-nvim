local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>fs"] = { "<ESC><cmd>lua require('telescope.builtin').diagnostics({bufnr=0})<CR>", "find diagnostics" },
    ["<leader>fd"] = { "<cmd> Telescope lsp_document_symbols<CR>", "find symbols" },
    ["<leader>rr"] = {
      function ()
        require('rest-nvim').run()
      end,
      "rest run http"
    },
    ["<leader>rp"] = {
      function ()
        require('rest-nvim').run(true)
      end,
      "rest preview http"
    },
    ["<leader>rl"] = {
      function ()
        require('rest-nvim').last()
      end,
      "rest run last http"
    },
  },
}

return M
