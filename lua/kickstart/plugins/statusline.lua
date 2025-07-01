-- nvim-lualine is a Neovim plugin to display a mini statusline below
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('lualine').setup {
      options = {
        section_separators = '',
		component_separators = '' -- '│',
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = {
		  {
		    'filename',
		    path = 1,
		  }
		},
        lualine_x = {},
		lualine_y = { 'filetype', 'fileformat', 'encoding' },
        lualine_z = { 'progress', 'location' },
      },
    }
  end,
}
