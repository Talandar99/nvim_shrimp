require('nvim-treesitter.configs').setup({
    ensure_installed = {  "html", "bash", "typescript" ,"c", "lua", "rust","python","elixir" },

    highlight = {
        enable = true,
        custom_captures = {
            -- ["<capture group>"] = "<highlight group>",
            -- ["keyword"] = "TSString",
        },
    },

    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
        },
    },

    indent = {
        enable = true
    },
})
