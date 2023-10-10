return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    local colors = {
      dark0_hard = "#1d2021",
      dark0 = "#282828",
      dark0_soft = "#32302f",
      dark1 = "#3c3836",
      dark2 = "#504945",
      dark3 = "#665c54",
      dark4 = "#7c6f64",

      gray_245 = "#928374",
      gray_244 = "#928374",

      light0_hard = "#f9f5d7",
      light0 = "#fbf1c7",
      light0_soft = "#f2e5bc",
      light1 = "#ebdbb2",
      light2 = "#d5c4a1",
      light3 = "#bdae93",
      light4 = "#a89984",

      bright_red = "#fb4934",
      bright_green = "#b8bb26",
      bright_yellow = "#fabd2f",
      bright_blue = "#83a598",
      bright_purple = "#d3869b",
      bright_aqua = "#8ec07c",
      bright_orange = "#fe8019",

      neutral_red = "#cc241d",
      neutral_green = "#98971a",
      neutral_yellow = "#d79921",
      neutral_blue = "#458588",
      neutral_purple = "#b16286",
      neutral_aqua = "#689d6a",
      neutral_orange = "#d65d0e",

      faded_red = "#9d0006",
      faded_green = "#79740e",
      faded_yellow = "#b57614",
      faded_blue = "#076678",
      faded_purple = "#8f3f71",
      faded_aqua = "#427b58",
      faded_orange = "#af3a03",
    }

    local my_lualine_theme = {
      normal = {
        a = { bg = colors.bright_blue, fg = colors.dark0, gui = "bold" },
        b = { bg = colors.dark0_soft, fg = colors.light0 },
        c = { bg = colors.dark0_soft, fg = colors.light0 },
      },
      insert = {
        a = { bg = colors.bright_green, fg = colors.dark0, gui = "bold" },
        b = { bg = colors.dark0_soft, fg = colors.light0 },
        c = { bg = colors.dark0_soft, fg = colors.light0 },
      },
      visual = {
        a = { bg = colors.bright_purple, fg = colors.dark0, gui = "bold" },
        b = { bg = colors.dark0_soft, fg = colors.light0 },
        c = { bg = colors.dark0_soft, fg = colors.light0 },
      },
      command = {
        a = { bg = colors.bright_yellow, fg = colors.dark0, gui = "bold" },
        b = { bg = colors.dark1, fg = colors.light0 },
        c = { bg = colors.dark1, fg = colors.light0 },
      },
      replace = {
        a = { bg = colors.bright_red, fg = colors.dark0, gui = "bold" },
        b = { bg = colors.dark1, fg = colors.light0 },
        c = { bg = colors.dark1, fg = colors.light0 },
      },
      inactive = {
        a = { bg = colors.dark2, fg = colors.gray_245, gui = "bold" },
        b = { bg = colors.dark2, fg = colors.gray_245 },
        c = { bg = colors.dark2, fg = colors.gray_245 },
      },
    }

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = my_lualine_theme,
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = colors.bright_orange },
          },
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
      },
    })
  end,
}
