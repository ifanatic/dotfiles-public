require 'ifanatic.baseplugins'

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

local function open_nvim_tree(data)
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  vim.cmd.enew()
  vim.cmd.bw(data.buf)
  vim.cmd.cd(data.file)
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

