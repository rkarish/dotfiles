require('nvim-tree').setup(
  {
    sort_by = 'case_sensitive',
    view = {
      adaptive_size = true,
      relativenumber = true,
      mappings = {
        list = {
          { key = 'u', action = 'dir_up' }
        }
      }
    },
    renderer = {
      group_empty = true
    },
    filters = {
      dotfiles = false
    }
  }
)

vim.cmd[[
  hi NvimTreeNormal guibg=NONE ctermbg=NONE
]]
