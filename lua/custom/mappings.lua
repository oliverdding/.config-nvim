local map = require("core.utils").map

map("n", "<leader>b", '<Cmd>lua require"dap".toggle_breakpoint()<CR>')
map("n", "<leader>c", '<Cmd>lua require"dap".continue()<CR>')
map("n", "<leader>s", '<Cmd>lua require"dap".step_over()<CR>')
map("n", "<leader>i", '<Cmd>lua require"dap".step_into()<CR>')
map("n", "<leader>o", '<Cmd>lua require"dap".step_out()<CR>')

map("n", "<leader>d", '<Cmd>lua require"dapui".toggle()<CR>')
