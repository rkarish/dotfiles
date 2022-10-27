require('nvim-treesitter.configs').setup(
  {
    highlight = {
      enable = true,
      disable = {}
    },
    indent = {
      enable = true,
      disable = {}
    },
    ensure_installed = {
      "python",
      "lua",
      "javascript",
      "typescript"
    },
    auto_install = true,
    autotag = {
      enable = true
    }
  }
)
