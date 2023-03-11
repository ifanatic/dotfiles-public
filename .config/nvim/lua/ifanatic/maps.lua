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


-- PLUGINS
keymap.set('n', '<]h>', ':GitGutterNextHunk<CR>', { silent = true })
keymap.set('n', '<[h>', ':GitGutterPrevHunk<CR>', { silent = true })
