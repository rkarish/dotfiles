vim.cmd [[
  packadd packer.nvim
]]

require('packer').startup(
  function(use)
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind-nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'williamboman/mason-lspconfig.nvim'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'junegunn/fzf'
    use 'tpope/vim-fugitive'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'navarasu/onedark.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'akinsho/bufferline.nvim'
    use 'kyazdani42/nvim-tree.lua'
    use 'dinhhuy258/git.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-treesitter/nvim-treesitter'
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-dap-python'
    use 'rcarriga/nvim-dap-ui'
    use 'folke/which-key.nvim'
  end
)
