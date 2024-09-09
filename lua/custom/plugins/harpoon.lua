return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup {
      settings = {
        save_on_toggle = true,
      },
    }

    vim.keymap.set('n', '<m-a>', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', '<m-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<m-c-j>', function()
      harpoon:list():select(1)
    end)

    vim.keymap.set('n', '<m-c-k>', function()
      harpoon:list():select(2)
    end)

    vim.keymap.set('n', '<m-c-l>', function()
      harpoon:list():select(3)
    end)

    vim.keymap.set('n', '<m-c-;>', function()
      harpoon:list():select(4)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<m-s-p>', function()
      harpoon:list():prev()
    end)
    vim.keymap.set('n', '<m-s-n>', function()
      harpoon:list():next()
    end)
  end,
}
