local null_ls = require('null-ls')

null_ls.setup(
  {
    sources = {
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.diagnostics.eslint,
      null_ls.builtins.diagnostics.flake8,
      null_ls.builtins.diagnostics.fish
    }
  }
)
