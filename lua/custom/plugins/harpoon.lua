return {
  "theprimeagen/harpoon",

  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<m-a>", mark.add_file)
    vim.keymap.set("n", "<m-e>", ui.toggle_quick_menu)

    vim.keymap.set("n", "<m-j>", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<m-k>", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<m-l>", function() ui.nav_file(3) end)
    vim.keymap.set("n", "<m-;>", function() ui.nav_file(4) end)
  end
}
