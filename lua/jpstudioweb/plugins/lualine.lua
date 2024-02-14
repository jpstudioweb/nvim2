return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local lualine = require("lualine")

    -- Cores do tema Nord
    local colors = {
      bg = "#3B4252", -- Nord1: used for background
      fg = "#E5E9F0", -- Nord5: used for main foreground, caret, delimiters and operators
      yellow = "#EBCB8B", -- Nord13: used for annotations
      cyan = "#8FBCBB", -- Nord7: lighter cyan compared to Nord8
      darkblue = "#5E81AC", -- Nord10: used for classes, documentation and types
      green = "#A3BE8C", -- Nord14: used for strings and inserted text
      orange = "#D08770", -- Nord12: used for constants and character literals
      violet = "#B48EAD", -- Nord15: used for numbers and literals
      magenta = "#B48EAD", -- Nord15: used for numbers and literals
      normal_blue = "#81A1C1", -- Nord9: used for variable names and function calls
    }

    -- Definição do tema para lualine baseado no Nord
    local nord_theme = {
      normal = {
        a = { bg = colors.normal_blue, fg = colors.bg, gui = "bold" }, -- Using normal_blue for the normal mode bar
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      insert = {
        a = { bg = colors.darkblue, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
      },
      visual = {
        a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
      },
      replace = {
        a = { bg = colors.orange, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
      },
      command = {
        a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
      },
      inactive = {
        a = { bg = colors.bg, fg = colors.fg },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
    }

    -- Configuração do lualine com o tema Nord
    lualine.setup({
      options = {
        theme = nord_theme,
        -- outras opções ...
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", { "diagnostics", sources = { "nvim_diagnostic" } } },
        lualine_c = { { "filename", file_status = true, path = 1 } },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = {},
    })
  end,
}
