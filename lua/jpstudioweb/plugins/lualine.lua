return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local lualine = require("lualine")

    -- Cores do tema Tokyo Night
    local colors = {
      bg = "#1a1b26", -- Background: escuro
      fg = "#c0caf5", -- Foreground: claro
      yellow = "#e0af68", -- Amarelo
      cyan = "#7dcfff", -- Ciano
      darkblue = "#7aa2f7", -- Azul escuro
      green = "#9ece6a", -- Verde
      orange = "#ff9e64", -- Laranja
      violet = "#bb9af7", -- Violeta
      magenta = "#f7768e", -- Magenta
      normal_blue = "#7aa2f7", -- Azul normal
    }

    -- Definição do tema para lualine baseado no Tokyo Night
    local tokyonight_theme = {
      normal = {
        a = { bg = colors.normal_blue, fg = colors.bg, gui = "bold" },
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

    -- Configuração do lualine com o tema Tokyo Night
    lualine.setup({
      options = {
        theme = tokyonight_theme,
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
