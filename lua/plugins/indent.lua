local highlight = {
  "CursorColumn",
  "Whitespace",
}

return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "LazyFile",
    opts = {
      scope = {
        enabled = false,
      },
    },
  },
}
