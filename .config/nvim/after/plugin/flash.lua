local flash = require'flash'
local keymap = vim.keymap

local opts = {}

keymap.set('n', 's', function() flash.jump({}) end)
keymap.set('n', 'S', function() flash.treesitter({}) end)
