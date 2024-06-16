return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  opts = {
    options = {
      icons_enabled = true,
      theme = 'horizon',
      component_separators = ' ╱ ',
      section_separators = '',
    },
    sections = {
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { { 'filename', file_status = true, path = 1 } },
    }
  },
}
