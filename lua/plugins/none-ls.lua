return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = "davidmh/cspell.nvim",
    opts = function(_, opts)
      local cspell = require("cspell")
      local config = {
        find_json = function()
          return vim.loop.os_homedir() .. "/.cspell.json"
        end,
      }
      opts.sources = vim.list_extend(opts.sources or {}, {
        cspell.diagnostics.with({ config = config }),
        cspell.code_actions.with({ config = config }),
      })
    end,
  },
}
