return {
  {
    "neovim/nvim-lspconfig",
    config = function(_, opts)
      opts.inlay_hints.enabled = true
    end,
  },
}
