local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'linux-cultist/venv-selector.nvim' }

require('venv-selector').setup {
  options = {}, -- plugin-wide options
  search = {}, -- custom search definitions
}

vim.keymap.set('n', '<leader>vs', '<cmd>VenvSelect<cr>', { desc = '[V]env [S]elect' })
