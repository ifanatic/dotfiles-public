require("telescope").setup {
    extensions = {
        file_browser = {
            grouped = true,
            hidden = true,
            display_stat = { date = false, size = false, mode = false },
            git_status = false,
            theme = 'dropdown',
        },
    },
}

require("telescope").load_extension "file_browser"

vim.keymap.set('n', '<C-p>', 
    function() 
        require'telescope.builtin'.find_files({
            find_command = { 'rg', '--files', '--hidden', '-g', '!.git' }
        })
    end
)

vim.keymap.set('n', '<C-l>', 
    function()
        require'telescope.builtin'.live_grep({
            additional_args = {
                '--hidden', '-g', '!.git',
            },
        })
    end
)

vim.keymap.set('n', '<C-\\>', 
    function() 
        require "telescope".extensions.file_browser.file_browser({
            path = "%:p:h", 
            previewer = false,
            layout_config = { width = 100, height = 25 },
        })
    end
)
