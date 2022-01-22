call plug#begin('~/.vim/plugged')
    " Plugins
    Plug 'airblade/vim-gitgutter'
    Plug 'machakann/vim-highlightedyank'
    Plug 'andymass/vim-matchup'
    Plug 'tpope/vim-commentary'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    " Navigation
    Plug 'justinmk/vim-sneak'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " UI
    Plug 'itchyny/lightline.vim' 
    Plug 'preservim/nerdtree'
    Plug 'romgrk/barbar.nvim'
    Plug 'mengelbrecht/lightline-bufferline'

    " LSP
    Plug 'rust-lang/rust.vim'
    Plug 'neovim/nvim-lspconfig'
    Plug 'nvim-lua/lsp_extensions.nvim'
    Plug 'L3MON4D3/LuaSnip'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/nvim-cmp'
    
    " Themes
    Plug 'rakr/vim-one'
    Plug 'arcticicestudio/nord-vim'
call plug#end()
