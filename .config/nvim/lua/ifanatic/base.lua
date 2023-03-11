vim.cmd('colorscheme one')

vim.opt.completeopt = 'menuone,noinsert,noselect'

vim.opt.shortmess = vim.opt.shortmess + 'c'

-- Searching
vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.number = true
vim.opt.wildmenu = true
vim.opt.showmatch = true
vim.opt.termguicolors = true

vim.opt.encoding = 'UTF-8'
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.cursorline = true

vim.opt.list = true
vim.opt.listchars = 'eol:↵,trail:~,tab:>-,nbsp:␣'

if vim.fn.has 'win32' then
    vim.opt.guifont = 'JetBrains Mono:h10'
end


