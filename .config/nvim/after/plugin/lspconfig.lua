-- nvim_lsp object
local nvim_lsp = require'lspconfig'

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

local augroup_format = vim.api.nvim_create_augroup("Format", { clear = true })
local enable_format_on_save = function(_, bufnr)
    vim.api.nvim_clear_autocmds({ group = augroup_format, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup_format,
        buffer = bufnr,
        callback = function()
            vim.lsp.buf.format({ bufnr = bufnr })
        end,
    })
end

local on_attach = function(client, bufnr)
    local bufopts = { noremap = true, silent = true, buffer = bufnr }

    vim.keymap.set('n', '<c-]>', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gD',    vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<c-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '1gD',   vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', 'gr',    vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', 'g0',    vim.lsp.buf.document_symbol, bufopts)
    vim.keymap.set('n', 'gW',    vim.lsp.buf.workspace_symbol, bufopts)
    vim.keymap.set('n', 'gd',    vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'ga',    vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'ff',    vim.lsp.buf.format, bufopts)

    enable_format_on_save(client, bufnr)
end

local lspservers = { "rust_analyzer", "gopls", "tsserver", "dartls", "clangd", "terraformls", "tflint" }
for i, lsp in ipairs(lspservers) do
    nvim_lsp[lsp].setup({ 
        on_attach = on_attach,
        flags = {
            debounce_text_changes = 150,
        },
        capabilities = capabilities,
    })
end

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)
