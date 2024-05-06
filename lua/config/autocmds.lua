-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({
  "BufRead",
}, {
  pattern = { "*" },
  callback = function()
    vim.cmd("TSBufEnable highlight")
  end,
})

vim.api.nvim_create_autocmd({
  "FileType",
}, {
  pattern = { "*.tsx,*.ts,*.js,*.jsx", "*.hbs" },
  callback = function()
    if vim.b then
      ---@diagnostic disable-next-line: inject-field
      vim.b.autoformat = false
    end
  end,
})
