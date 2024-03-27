return {
  'subnut/nvim-ghost.nvim',

  config = function()
    vim.g.nvim_ghost_use_script = 1
    vim.g.nvim_ghost_python_executable = '/usr/bin/python3'
  end,
}
