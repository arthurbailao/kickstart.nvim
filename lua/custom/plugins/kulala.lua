return {
  'mistweaverco/kulala.nvim',
  config = function()
    -- Setup is required, even if you don't pass any options
    require('kulala').setup {
      default_view = 'headers_body',
    }
  end,
}
