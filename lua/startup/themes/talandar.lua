local settings = {
    -- every line should be same width without escaped \
    header = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Header",
        margin = 0,
        content = {
[[███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
[[████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
[[██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
[[██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
[[██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
[[╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
		[[]],
	[[Better, stronger, faster]],
		[[🦐 Shrimp Configuratuion 🦐]],
	},
        highlight = "Number",
        default_color = "",
        oldfiles_amount = 0,
    },
    -- name which will be displayed and command
    body = {
        type = "mapping",
        align = "center",
        fold_section = false,
        title = "Basic Commands",
        margin = 0,
        content = {
{ "Vimwiki", "VimwikiIndex", "<leader>x" },
{ "Telescope", "Telescope find_files", "<leader>c" },
{ "File View", "E", "<leader>s" },
{ "New File", "lua require'startup'.new_file()", "<leader>d" },
        },
        highlight = "type",
        default_color = "",
        oldfiles_amount = 0,
    },
    footer = {
        type = "text",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Footer",
        margin = 5,
        content = { "talandar.nvim" },
        highlight = "bracet",
        default_color = "",
        oldfiles_amount = 0,
    },

    options = {
        mapping_keys = true,
        cursor_column = 0.5,
        empty_lines_between_mappings = true,
        disable_statuslines = false,
        paddings = { 3, 0, 0},
    },
    mappings = {
        execute_command = "<CR>",
        open_file = "o",
        open_file_split = "<c-o>",
        open_section = "<TAB>",
        open_help = "?",
    },
    parts = { 
			"header",
			"body",
--			"footer"
		},
}
return settings
