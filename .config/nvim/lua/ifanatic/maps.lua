local keymap = vim.keymap

keymap.set('', 'H', '^')
keymap.set('', 'L', '$')

keymap.set('n', '<A-k>', ':wincmd k<CR>', { silent = true })
keymap.set('n', '<A-j>', ':wincmd j<CR>', { silent = true })
keymap.set('n', '<A-h>', ':wincmd h<CR>', { silent = true })
keymap.set('n', '<A-l>', ':wincmd l<CR>', { silent = true })


keymap.set('n', '<A-,>', ':BufferPrevious<CR>', { silent = true })
keymap.set('n', '<A-.>', ':BufferNext<CR>', { silent = true })
keymap.set('n', '<A-p>', ':BufferPin<CR>', { silent = true })
keymap.set('n', '<A-c>', ':BufferClose<CR>', { silent = true })
keymap.set('n', '<A-w>', ':close<CR>', { silent = true })

keymap.set('n', '<A-s>', ':BufferPick<CR>', { silent = true })

for i=1,8,1 do
    keymap.set('n', '<A-' ..  i .. '>', ':BufferGoto ' .. i .. '<CR>', { silent = true })
end

-- LSP

keymap.set('n', '<c-]>', vim.lsp.buf.definition)
keymap.set('n', 'gD',    vim.lsp.buf.implementation)
keymap.set('n', '<c-k>', vim.lsp.buf.signature_help)
keymap.set('n', '1gD',   vim.lsp.buf.type_definition)
keymap.set('n', 'gr',    vim.lsp.buf.references)
keymap.set('n', 'g0',    vim.lsp.buf.document_symbol)
keymap.set('n', 'gW',    vim.lsp.buf.workspace_symbol)
keymap.set('n', 'gd',    vim.lsp.buf.declaration)
keymap.set('n', 'ga',    vim.lsp.buf.code_action)
keymap.set('n', 'ff',    vim.lsp.buf.format)
keymap.set('n', 'ff',    vim.lsp.buf.format)

-- PLUGINS

keymap.set('n', '<C-p>', 
    function() 
        require'telescope.builtin'.find_files({
            find_command = { 'rg', '--files', '--hidden', '-g', '!.git' }
        })
    end
)

keymap.set('n', '<C-l>', require'telescope.builtin'.live_grep)

keymap.set('n', '<C-n>', ':NERDTree<CR>')
keymap.set('n', '<C-t>', ':NERDTreeToggle<CR>')
keymap.set('n', '<C-f>', ':NERDTreeFind<CR>')

keymap.set('n', '<]h>', ':GitGutterNextHunk<CR>', { silent = true })
keymap.set('n', '<[h>', ':GitGutterPrevHunk<CR>', { silent = true })
