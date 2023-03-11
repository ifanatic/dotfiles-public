runtime ./plug.vim

lua require'ifanatic.base'
lua require'ifanatic.maps'

" Enable format on save
autocmd BufWritePre *.go lua vim.lsp.buf.format(nil)
autocmd BufWritePre *.rs lua vim.lsp.buf.format(nil)

" Enable type inlay hints
autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *.rs
\ lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = "Comment", enabled = {"TypeHint", "ChainingHint", "ParameterHint"} }

if executable('rg')
	set grepprg=rg\ --no-heading\ --vimgrep
	set grepformat=%f:%l:%c:%m
endif

" <leader>s for Rg search
noremap <leader>s :Rg
let g:fzf_layout = { 'down': '~20%' }
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

function! s:list_cmd()
  let base = fnamemodify(expand('%'), ':h:.:S')
  return base == '.' ? 'fd --type file --follow --hidden --exclude "*.git"' : printf('fd --type file --follow --hidden | proximity-sort %s', shellescape(expand('%')))
endfunction

let g:sneak#label = 1

" buffer line, aka tabs
let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:false
let bufferline.icons = 'numbers'
let bufferline.tabpages = v:true
let bufferline.closable = v:false
let bufferline.icon_separator_active = '▎'
let bufferline.icon_custom_colors = v:false
