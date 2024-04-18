-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({
  "FileType",
}, {
  pattern = { "tsx", "ts", "js", "jsx" },
  callback = function()
    vim.b.autoformat = false
  end,
})

vim.api.nvim_create_autocmd({
  "BufRead",
}, {
  pattern = { "*" },
  callback = function()
    vim.api.nvim_cmd({ "<cmd>TSBufEnable highlight<cr>" })
  end,
})
