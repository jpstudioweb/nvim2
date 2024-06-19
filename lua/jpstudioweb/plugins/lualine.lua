return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local lualine = require("lualine")

    -- Cores do tema Gruvbox Light
    local colors = {
      bg = "#fbf1c7", -- Background: claro
      fg = "#3c3836", -- Foreground: escuro
      blue = "#458588", -- Azul
      cyan = "#689d6a", -- Ciano
      darkblue = "#076678", -- Azul escuro
      green = "#98971a", -- Verde
      orange = "#d65d0e", -- Laranja
      violet = "#b16286", -- Violeta
      magenta = "#d3869b", -- Magenta
      red = "#cc241d", -- Vermelho
      yellow = "#d79921", -- Amarelo
    }

    -- Definição do tema para lualine baseado no Gruvbox Light
    local gruvbox_light_theme = {
      normal = {
        a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
      insert = {
        a = { bg = colors.green, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
      },
      visual = {
        a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
      },
      replace = {
        a = { bg = colors.red, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
      },
      command = {
        a = { bg = colors.orange, fg = colors.bg, gui = "bold" },
        b = { bg = colors.bg, fg = colors.fg },
      },
      inactive = {
        a = { bg = colors.bg, fg = colors.fg },
        b = { bg = colors.bg, fg = colors.fg },
        c = { bg = colors.bg, fg = colors.fg },
      },
    }

    -- Configuração do lualine com o tema Gruvbox Light
    lualine.setup({
      options = {
        theme = gruvbox_light_theme,
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
