local which_key = require('which-key')

which_key.setup(
  {
    plugins = {
      marks = true,
      registers = true,
      spelling = {
        enabled = false,
        suggestions = 20
      },
      presets = {
        operators = true,
        motions = true,
        text_objects = true,
        windows = true,
        nav = true,
        z = true,
        g = true
      }
    },
    operators = { gc = 'Comments' },
    key_labels = {},
    icons = {
      breadcrumb = '»',
      separator = '➜',
      group = '+'
    },
    popup_mappings = {
      scroll_down = '<c-d>',
      scroll_up = '<c-u>'
    },
    window = {
      border = 'none',
      position = 'bottom',
      margin = { 1, 0, 1, 0 },
      padding = { 2, 2, 2, 2 },
      winblend = 0
    },
    layout = {
      height = { min = 4, max = 25 },
      width = { min = 20, max = 50 },
      spacing = 3,
      align = 'left'
    },
    ignore_missing = false,
    hidden = { '<silent>', '<cmd>', '<Cmd>', '<CR>', 'call', 'lua', '^:', '^ ' },
    show_help = true,
    triggers = 'auto',
    triggers_blacklist = {
      i = { 'j', 'k' },
      v = { 'j', 'k' }
    },
    disable = {
      buftypes = {},
      filetypes = { 'TelescopePrompt' }
    }
  }
)

-- lsp-saga --

which_key.register(
  {
    l = {
      name = 'lsp-saga',
      n = { '<CMD>Lspsaga diagnostic_jump_next<CR>', 'Jump Next' },
      h = { '<CMD>Lspsaga hover_doc<CR>', 'Hover Doc' },
    }
  },
  {
    mode = 'n',
    prefix = '<leader>',
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = false
  }
)

-- telescope --

which_key.register(
  {
    t = {
      name = 'telescope',
      f = { '<CMD>Telescope find_files<CR>', 'Telescope Find' },
      g = { '<CMD>Telescope live_grep<CR>', 'Telescope Grep' },
      b = { '<CMD>Telescope buffersCR>', 'Telescope Buffers' },
      h = { '<CMD>Telescope help_tagsCR>', 'Telescope Help' }
    }
  },
  {
    mode = 'n',
    prefix = '<leader>',
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = false
  }
)

-- git --

which_key.register(
  {
    g = {
      name = 'git',
      b = { '<CMD>GitBlame<CR>', 'Git Blame' },
      d = { '<CMD>GitDiff<CR>', 'Git Diff' },
      D = { '<CMD>GitDiffClose<CR>', 'Git Diff Close' }
    }
  },
  {
    mode = 'n',
    prefix = '<leader>',
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = false
  }
)

-- nvim-tree --

which_key.register(
  {
    n = {
      name = 'nvim-tree',
      c = { '<CMD>NvimTreeCollapse<CR>', 'Nvim Tree Collapse' },
      t = { '<CMD>NvimTreeToggle<CR>', 'Nvim Tree Toggle' },
      f = { '<CMD>NvimTreeFindFile<CR>', 'Nvim Tree Find File' }
    }
  },
  {
    mode = 'n',
    prefix = '<leader>',
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = false
  }
)

-- dap-ui --

which_key.register(
  {
    u = {
      name = 'dap-ui',
      o = { '<CMD>lua require("dapui").open()<CR>', 'Open DAP UI' },
      c = { '<CMD>lua require("dapui").close()<CR>', 'Close DAP UI' },
      t = { '<CMD>lua require("dapui").toggle()<CR>', 'Toggle DAP UI' }
    }
  },
  {
    mode = 'n',
    prefix = '<leader>',
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = false
  }
)

-- dap --

which_key.register(
  {
    d = {
      name = 'dap',
      R = { '<CMD>lua require("dap").run_to_cursor()<CR>', 'Run to Cursor' },
      E = { '<CMD>lua require("dapui").eval(vim.fn.input "[Expression] > ")<CR>', 'Evaluate Input' },
      C = { '<CMD>lua require("dap").set_breakpoint(vim.fn.input "[Condition] > ")<CR>', 'Conditional Breakpoint' },
      U = { '<CMD>lua require("dapui").toggle()<CR>', 'Toggle UI' },
      b = { '<CMD>lua require("dap").step_back()<CR>', 'Step Back' },
      c = { '<CMD>lua require("dap").continue()<CR>', 'Continue' },
      d = { '<CMD>lua require("dap").disconnect()<CR>', 'Disconnect' },
      e = { '<CMD>lua require("dapui").eval()<CR>', 'Evaluate' },
      g = { '<CMD>lua require("dap").session()<CR>', 'Get Session' },
      h = { '<CMD>lua require("dap.ui.widgets").hover()<CR>', 'Hover Variables' },
      S = { '<CMD>lua require("dap.ui.widgets").scopes()<CR>', 'Scopes' },
      i = { '<CMD>lua require("dap").step_into()<CR>', 'Step Into' },
      o = { '<CMD>lua require("dap").step_over()<CR>', 'Step Over' },
      p = { '<CMD>lua require("dap").pause.toggle()<CR>', 'Pause' },
      q = { '<CMD>lua require("dap").close()<CR>', 'Quit' },
      r = { '<CMD>lua require("dap").repl.toggle()<CR>', 'Toggle Repl' },
      s = { '<CMD>lua require("dap").continue()<CR>', 'Start' },
      t = { '<CMD>lua require("dap").toggle_breakpoint()<CR>', 'Toggle Breakpoint' },
      x = { '<CMD>lua require("dap").terminate()<CR>', 'Terminate' },
      u = { '<CMD>lua require("dap").step_out()<CR>', 'Step Out' }
    }
  },
  {
    mode = 'n',
    prefix = '<leader>',
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = false
  }
)

which_key.register(
  {
    name = 'dap',
    e = { '<CMD>lua require("dapui").eval()<CR>', 'Evaluate' }
  },
  {
    mode = 'v',
    prefix = '<leader>',
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = false
  }
)
