return {
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      local logo = [[
######## ########  ######## ########    ##     ##  #######  ########  ######## 
##       ##     ## ##       ##          ###   ### ##     ## ##     ## ##       
##       ##     ## ##       ##          #### #### ##     ## ##     ## ##       
######   ########  ######   ######      ## ### ## ##     ## ##     ## ######   
##       ##   ##   ##       ##          ##     ## ##     ## ##     ## ##       
##       ##    ##  ##       ##          ##     ## ##     ## ##     ## ##       
##       ##     ## ######## ########    ##     ##  #######  ########  ######## 
    ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n\n"

      opts.config.header = vim.split(logo, "\n")

      opts.config.center = {
        {
          action = "lua LazyVim.pick()()",
          desc = " Find File",
          icon = " ",
          key = "f",
        },
        {
          action = "ene | startinsert",
          desc = " New File",
          icon = " ",
          key = "n",
        },
        {
          action = 'lua LazyVim.pick("oldfiles")()',
          desc = " Recent Files",
          icon = " ",
          key = "r",
        },
        {
          action = 'lua LazyVim.pick("live_grep")()',
          desc = " Find Text",
          icon = " ",
          key = "g",
        },
        {
          action = "lua LazyVim.pick.config_files()()",
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
          action = function()
            vim.api.nvim_input("<cmd>qa<cr>")
          end,
          desc = " Quit",
          icon = " ",
          key = "q",
        },
      }

      opts.config.footer = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        return {
          "",
          "",
          "",
          "",
          "⚡ Neovim loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms .. "ms",
        }
      end

      return opts
    end,
  },
}
