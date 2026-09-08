local function gh(repo) return 'https://github.com/' .. repo end

-- [[ Formatting ]]
vim.pack.add { gh 'stevearc/conform.nvim' }
require('conform').setup {
  notify_on_error = false,
  format_on_save = function(bufnr)
    -- You can specify filetypes to autoformat on save here:
    local enabled_filetypes = {
      -- lua = true,
      -- python = true,
    }
    if enabled_filetypes[vim.bo[bufnr].filetype] then
      return { timeout_ms = 500 }
    else
      return nil
    end
  end,
  default_format_opts = {
    lsp_format = 'fallback', -- Use external formatters if configured below, otherwise use LSP formatting. Set to `false` to disable LSP formatting entirely.
  },
  -- You can also specify external formatters in here.
  formatters_by_ft = {
    -- rust = { 'rustfmt' },
    c = { 'clang_format' },
    -- Conform can also run multiple formatters sequentially
    go = { 'goimports', 'gofumpt' },
    python = { 'ruff_organize_imports', 'ruff_format' },
    -- `tinymist` comes with `typstyle` support out of the box.
    -- There seems to be an issue where neovim doesn't pickup that lsp supports formatting.
    -- Once that is fixed, we can remove this line.
    -- REFER: https://github.com/Myriad-Dreamin/tinymist/issues/2039
    -- REFER: https://github.com/neovim/neovim/issues/24229
    typst = { 'typstyle' },
    yaml = { 'prettierd', 'prettier', 'yamlfmt', stop_after_first = true },
    -- You can use 'stop_after_first' to run the first available formatter from the list
    javascript = { 'oxfmt', 'prettierd', 'prettier', stop_after_first = true },
    javascriptreact = { 'oxfmt', 'prettierd', 'prettier', stop_after_first = true },
    typescript = { 'oxfmt', 'prettierd', 'prettier', stop_after_first = true },
    typescriptreact = { 'oxfmt', 'prettierd', 'prettier', stop_after_first = true },
    json = { 'oxfmt' },
    vue = { 'oxfmt', 'prettierd', 'prettier', stop_after_first = true },
    markdown = { 'prettierd', 'prettier', stop_after_first = true },
    ocaml = { 'ocamlformat' },
  },
}

vim.keymap.set({ 'n', 'v' }, '<leader>f', function() require('conform').format { async = true } end, { desc = '[F]ormat buffer' })

-- vim: ts=2 sts=2 sw=2 et
