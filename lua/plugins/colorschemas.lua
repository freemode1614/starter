return {
  {
    "morhetz/gruvbox",
  },
  { "sainnhe/gruvbox-material" },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "macchiato",
      transparent_background = true,
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      light_style = " day",
      transparent = true,
      styles = {
        siderbars = "transparent",
      },
      dim_inactive = true,
      lualine_bold = true,
      siderbars = { "Neo-tree" },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
