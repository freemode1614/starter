return {
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      local logo = [[
            _________ ________    _________ _________  _____   _____  ____  _______  _________
            |_   __  ||_   __ \   |_   __  ||_   __  | |_   \  /   _|.'   `.|_   _ `.|_   __  |
              | |_ \_|  | |__) |    | |_ \_|  | |_ \_|   |   \/   | /  .-.  \ | | `. \ | |_ \_|
              |  _|     |  __ /     |  _| _   |  _| _    | |\  /| | | |   | | | |  | | |  _| _
             _| |_     _| |  \ \_  _| |__/ | _| |__/ |  _| |_\/_| |_\  `-'  /_| |_.' /_| |__/ |
            |_____|   |____| |___||________||________| |_____||_____|`.___.'|______.'|________|

    ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n\n"

      opts.config.header = vim.split(logo, "\n")

      opts.config.center = {
        {
          action = [[lua require("lazyvim.util").telescope.config_files()()]],
          desc = " Config",
          icon = " ",
          key = "c",
        },
        {
          action = 'lua require("persistence").load()',
          desc = " Restore Session",
          icon = " ",
          key = "s",
        },
        {
          action = "LazyExtras",
          desc = " Lazy Extras",
          icon = " ",
          key = "x",
        },
        {
          action = "Lazy",
          desc = " Lazy",
          icon = "󰒲 ",
          key = "l",
        },
        {
          action = "qa",
          desc = " Quit",
          icon = " ",
          key = "q",
        },
      }

      opts.config.footer = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        return { "", "", "", "", "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms" }
      end

      return opts
    end,
  },
}
