return {
  -- 'Shatur/neovim-ayu',
  'kepano/flexoki-neovim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'flexoki-light'
    -- vim.cmd.colorscheme 'ayu-dark'
    -- vim.cmd.hi 'Comment gui=none'
  end,
}

-- vim: ts=2 sts=2 sw=2 et
