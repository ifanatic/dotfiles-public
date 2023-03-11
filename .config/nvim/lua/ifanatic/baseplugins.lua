require("nvim-tree").setup({
    filters = {
        custom = { "^\\.git" },
    },
    update_focused_file = {
        enable = true,
    },
    renderer = {
        group_empty = true,
        full_name = true,
        indent_markers = {
            enable = true,
        },
        icons = {
            webdev_colors = false,
            show = {
                file = false,
                folder = false,
                git = false,
            },
        },
        special_files = {},
    },
})

require'bufferline'.setup{
    animation = false,
    icons = 'numbers',
    tabpages = true,
    closable = false,
    icon_separator_active =  '▎',
    icon_custom_colors = false,
}

