require'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        disable = { },
    },
    ensure_installed = {
        "go",
        "typescript",
        "rust",
        "cpp",
    },
}
