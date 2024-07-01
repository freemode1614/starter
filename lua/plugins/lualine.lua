local icons = require("lazyvim.config").icons

return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    table.remove(opts.sections.lualine_c)

    table.insert(opts.sections.lualine_c, {
      "filename",
      path = 3,
    })

    table.insert(opts.sections.lualine_c, {
      "filezie",
    })

    table.insert(opts.sections.lualine_c, {
      "diagnostics",
      symbols = {
        error = icons.diagnostics.Error,
        warn = icons.diagnostics.Warn,
        info = icons.diagnostics.Info,
        hint = icons.diagnostics.Hint,
      },
    })
  end,
}
