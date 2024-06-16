local function show_macro_recording()
    local recording_register = vim.fn.reg_recording()
    if recording_register == "" then
        return ""
    else
        return "Recording @" .. recording_register
    end
end

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
      lualine_a = {
        {
              "macro-recording",
              fmt = show_macro_recording,
        },
      },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { { 'filename', file_status = true, path = 1 } },
    }
  },
}
