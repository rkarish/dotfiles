vim.cmd [[
  packadd packer.nvim
]]

require('packer').startup(
  function(use)
    use 'wbthomason/packer.nvim'
    use 'dinhhuy258/git.nvim'
    use 'lewis6991/gitsigns.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-treesitter/nvim-treesitter'
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-dap-python'
    use 'saadparwaiz1/cmp_luasnip'
    use 'williamboman/mason-lspconfig.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'junegunn/fzf'
    use 'tpope/vim-fugitive'
    use 'nvim-lua/plenary.nvim'
    use 'folke/which-key.nvim'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use { 'glepnir/lspsaga.nvim', branch = 'main' }
    use 'onsails/lspkind-nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use { 'L3MON4D3/LuaSnip' }
    use {
      'hrsh7th/nvim-cmp',
      config = function ()
        require'cmp'.setup {
        snippet = {
          expand = function(args)
            require'luasnip'.lsp_expand(args.body)
          end
        },
        sources = {
          { name = 'luasnip' }
        },
      }
      end
    }
    use {
      'jose-elias-alvarez/null-ls.nvim',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
      'nvim-telescope/telescope.nvim', branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'kyazdani42/nvim-web-devicons' }
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {
      'catppuccin/nvim',
      as = 'catppuccin',
      config = function()
          vim.api.nvim_command 'colorscheme catppuccin'
      end
  }
  end
)
