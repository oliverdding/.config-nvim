return function()
    local opts = {
        hover_actions = {
            auto_focus = true,
        },
        tools = {
            crate_graph = {
                backend = "plain",
            },
        },
    }
    require('rust-tools').setup(opts)
end
