return {
  'linux-cultist/venv-selector.nvim',
  dependencies = {
    { 'nvim-telescope/telescope.nvim', branch = 'master', dependencies = { 'nvim-lua/plenary.nvim' } },
  },
  ft = 'python',
  keys = { { '<leader>vs', '<cmd>VenvSelect<cr>' } }, -- Open picker on keymap
  opts = {
    options = {}, -- plugin-wide options
    search = {}, -- custom search definitions
  },
}
