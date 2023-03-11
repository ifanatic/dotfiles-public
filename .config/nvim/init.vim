runtime ./plug.vim

lua require'ifanatic.base'
lua require'ifanatic.maps'

" Enable format on save
autocmd BufWritePre *.go lua vim.lsp.buf.format(nil)
autocmd BufWritePre *.rs lua vim.lsp.buf.format(nil)

" Enable type inlay hints
autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *.rs
\ lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }

