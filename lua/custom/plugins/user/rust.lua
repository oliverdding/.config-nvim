return function()
    local opts = {
        tools = {
            hover_actions = {
                auto_focus = true,
            },
            crate_graph = {
                backend = "plain",
            },
        },
    }
    require('rust-tools').setup(opts)
end
