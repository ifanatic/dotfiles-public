-- nvim_lsp object
local nvim_lsp = require'lspconfig'

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

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

-- Enable rust_analyzer
-- nvim_lsp.rust_analyzer.setup({ on_attach=on_attach })
-- nvim_lsp.gopls.setup({ on_attach=on_attach })
-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = true,
    signs = true,
    update_in_insert = true,
  }
)
