return {
  "stevearc/conform.nvim",
  optional = true,
  opts = function(_, opts)
    local local_formatters_by_ft = {
      typescript = { { "prettierd", "prettier" } },
      lua = { "stylua" },
      fish = { "fish_indent" },
      sh = { "shfmt" },
      python = { "isort", "black" }
    }

    opts.formatters_by_ft = opts.formatters_by_ft or {}

    for ft, formatter in ipairs(local_formatters_by_ft) do
      opts.formatters_by_ft[ft] = formatter
    end
  end
}
