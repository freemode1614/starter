-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local alpha = function()
  return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
end

local function is_unix()
  return package.config:sub(1, 1) == "/"
end

if vim.g.neovide then
  if is_unix() then
    vim.g.neovide_window_blurred = true
    vim.g.neovide_show_border = true
    vim.g.neovide_transparency = 0.1
    vim.g.transparency = 0.6
  end
  vim.g.neovide_theme = "auto"
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_profiler = false
  vim.g.neovide_cursor_animation_length = 0.1
  vim.g.neovide_cursor_trail_size = 0.4
  vim.g.neovide_cursor_vfx_mode = "pixiedust"
  vim.o.guifont = "Mononoki Nerd Font:h16" -- text below applies for VimScript
end

local opt = vim.opt

-- opt.background = "light"
opt.relativenumber = true
