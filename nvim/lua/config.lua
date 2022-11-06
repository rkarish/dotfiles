vim.api.nvim_create_autocmd(
  'InsertLeave',
  {
    pattern = '*',
    command = 'set nopaste'
  }
)

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.wo.number = true

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.mouse = 'a'
vim.opt.shell = 'fish'
vim.opt.inccommand = 'split'
vim.opt.wildoptions = 'pum'
vim.opt.background = 'dark'
vim.opt.guicursor = ''
vim.opt.cursorline = false
vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.wrap = false
vim.opt.cmdheight = 0
vim.opt.laststatus = 2
vim.opt.scrolloff = 10
vim.opt.winblend = 0
vim.opt.pumblend = 5
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' }
vim.opt.clipboard:append { 'unnamedplus' }
