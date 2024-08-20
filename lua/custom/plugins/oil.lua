return {
  'stevearc/oil.nvim',
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  config = function()
    require('oil').setup {
      columns = { 'icon' },
      skip_confirm_for_simple_edits = true,
      keymaps = {
        ['<C-h>'] = false,
        ['<C-l>'] = false,
        ['<C-r>'] = 'actions.refresh',
      },

      view_options = {
        -- Show files and directories that start with "."
        show_hidden = true,
        -- This function defines what is considered a "hidden" file
        is_hidden_file = function(name, _)
          return vim.startswith(name, '.')
        end,
        -- This function defines what will never be shown, even when `show_hidden` is set
        is_always_hidden = function(name, _)
          return name == '.git' and vim.fn.isdirectory(name) == 1
        end,
      },
    }

    vim.keymap.set('n', '<leader>nn', '<CMD>Oil<CR>', { desc = 'Oil Open' })
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Oil Open' })
  end,
}
