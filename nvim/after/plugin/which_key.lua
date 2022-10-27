local which_key = require('which-key')

which_key.setup(
  {
    plugins = {
      marks = true, -- shows a list of your marks on ' and `
      registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
      spelling = {
        enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
        suggestions = 20 -- how many suggestions should be shown in the list?
      },
      -- the presets plugin, adds help for a bunch of default keybindings in Neovim
      -- No actual key bindings are created
      presets = {
        operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
        motions = true, -- adds help for motions
        text_objects = true, -- help for text objects triggered after entering an operator
        windows = true, -- default bindings on <c-w>
        nav = true, -- misc bindings to work with windows
        z = true, -- bindings for folds, spelling and others prefixed with z
        g = true -- bindings for prefixed with g
      }
    },
    -- add operators that will trigger motion and text object completion
    -- to enable all native operators, set the preset / operators plugin above
    operators = { gc = 'Comments' },
    key_labels = {
      -- override the label used to display some keys. It doesn't effect WK in any other way.
      -- For example:
      -- ['<space>'] = 'SPC',
      -- ['<cr>'] = 'RET',
      -- ['<tab>'] = 'TAB',
    },
    icons = {
      breadcrumb = '»', -- symbol used in the command line area that shows your active key combo
      separator = '➜', -- symbol used between a key and it's label
      group = '+' -- symbol prepended to a group
    },
    popup_mappings = {
      scroll_down = '<c-d>', -- binding to scroll down inside the popup
      scroll_up = '<c-u>' -- binding to scroll up inside the popup
    },
    window = {
      border = 'none', -- none, single, double, shadow
      position = 'bottom', -- bottom, top
      margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
      padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
      winblend = 0
    },
    layout = {
      height = { min = 4, max = 25 }, -- min and max height of the columns
      width = { min = 20, max = 50 }, -- min and max width of the columns
      spacing = 3, -- spacing between columns
      align = 'left' -- align columns left, center or right
    },
    ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
    hidden = { '<silent>', '<cmd>', '<Cmd>', '<CR>', 'call', 'lua', '^:', '^ ' }, -- hide mapping boilerplate
    show_help = true, -- show help message on the command line when the popup is visible
    triggers = 'auto', -- automatically setup triggers
    -- triggers = {'<leader>'} -- or specify a list manually
    triggers_blacklist = {
      -- list of mode / prefixes that should never be hooked by WhichKey
      -- this is mostly relevant for key maps that start with a native binding
      -- most people should not need to change this
      i = { 'j', 'k' },
      v = { 'j', 'k' },
    },
    -- disable the WhichKey popup for certain buf types and file types.
    -- Disabled by deafult for Telescope
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
