require('catppuccin').setup(
  {
    flavour = 'macchiato',
    background = {
        light = 'latte',
        dark = 'mocha'
    },
    compile_path = vim.fn.stdpath('cache') .. '/catppuccin',
    transparent_background = true,
    term_colors = true,
    dim_inactive = {
        enabled = false,
        shade = 'dark',
        percentage = 0.15
    },
    styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {}
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        treesitter = true
    }
  }
)