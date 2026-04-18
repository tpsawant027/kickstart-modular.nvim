return {
  -- 'Shatur/neovim-ayu',
  -- 'kepano/flexoki-neovim',
  'rebelot/kanagawa.nvim',
  opts = {
    compile = false, -- enable compiling the colorscheme
    undercurl = true, -- enable undercurls
    commentStyle = { italic = false },
    functionStyle = {},
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = false, -- do not set background color
    dimInactive = false, -- dim inactive window `:h hl-NormalNC`
    terminalColors = true, -- define vim.g.terminal_color_{0,17}
    -- colors = { -- add/modify theme and palette colors
    --   palette = {},
    --   theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    -- },
    -- overrides = function(colors) -- add/modify highlights
    --   return {}
    -- end,
    theme = 'dragon',
    background = {
      dark = 'dragon',
      light = 'lotus',
    },
  },
  config = function(_, opts)
    require('kanagawa').setup(opts)

    vim.cmd.colorscheme 'kanagawa'
    -- vim.cmd.hi 'Comment gui=none'
  end,
}

-- vim: ts=2 sts=2 sw=2 et
