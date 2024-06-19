return {
  "stevearc/conform.nvim",
  opts = function(_, opts)
    opts.log_level = vim.log.levels.DEBUG

    opts.formatters_by_ft = opts.formatters_by_ft or {}

    local add_formatter_by_ft = function(ft, formatter)
      opts.formatter_by_ft[ft] = formatter
    end

    local supported = {
      lua = { "stylua" },
      typescript = {},
      javascript = {},
      python = { "isort", "black" },
      ["*"] = { "trim_whitespace" },
    }

    for ft, formatter in ipairs(supported) do
      add_formatter_by_ft(ft, formatter)
    end

    opts.formatters = opts.formatters or {}
  end,
}
