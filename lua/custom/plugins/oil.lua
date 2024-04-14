return {
  'stevearc/oil.nvim',
  opts = {
    view_options = {
      -- Show files and directories that start with "."
      show_hidden = true,
      -- This function defines what is considered a "hidden" file
      is_hidden_file = function(name, _)
        return vim.startswith(name, '.')
      end,
      -- This function defines what will never be shown, even when `show_hidden` is set
      is_always_hidden = function(name, _)
        return name == '.git' and vim.fn.isdirectory(name)
      end,
    },
  },

  init = function()
    vim.keymap.set('n', '<leader>nn', function()
      require('oil').open(nil)
    end, { desc = 'Oil Open' })
  end,

  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
}
