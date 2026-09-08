local function gh(repo) return 'https://github.com/' .. repo end

-- Useful plugin to show you pending keybinds.
vim.pack.add { gh 'folke/which-key.nvim' }
require('which-key').setup {
  -- Delay between pressing a key and opening which-key (milliseconds)
  delay = 0,
  icons = { mappings = vim.g.have_nerd_font },
  -- which-key's auto-trigger detection deliberately never fires for a single
  -- lowercase-letter prefix other than 'g'/'z' (see lua/which-key/buf.lua's
  -- `is_safe`), since those keys are usually core Vim operators/motions. But
  -- mini.surround genuinely groups its bindings under bare 's', so it has to
  -- be added as an explicit ("manual") trigger to get a popup at all.
  triggers = {
    { '<auto>', mode = 'nxso' },
    { 's', mode = { 'n', 'x' } },
  },
  -- Document existing key chains
  spec = {
    { '<leader>s', group = '[S]earch', mode = { 'n', 'v' } },
    { '<leader>t', group = '[T]oggle' },
    { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } }, -- Enable gitsigns recommended keymaps first
    { 'gr', group = 'LSP Actions', mode = { 'n' } },
    { 's', group = 'Surround', mode = { 'n', 'x' } }, -- mini.surround maps bare 's' to <Nop> with no desc
  },
}

-- vim: ts=2 sts=2 sw=2 et
