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
