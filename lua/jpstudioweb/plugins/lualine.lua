return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local lualine = require("lualine")

    -- Cores ajustadas para corresponder ao tema Xcode Light
    local colors = {
      bg = "#ffffff", -- Background geral: branco
      fg = "#262626", -- Foreground: escuro para contraste
      blue = "#0f68a0", -- Cor mais próxima do Xcode Light para azul
      green = "#3e8087", -- Verde ajustado para Xcode Light
      orange = "#ffaf00", -- Mantém a cor laranja (não especificada no Xcode Light, mantida para diversidade)
      violet = "#ad3da4", -- Violeta do Xcode Light
      magenta = "#804fb8", -- Magenta ajustado para Xcode Light
      red = "#d12f1b", -- Vermelho do Xcode Light
      yellow = "#ffd787", -- Amarelo ajustado, mantido do seu tema (não especificado no Xcode Light)
    }

    -- Definição do tema para lualine baseado nas cores do Xcode Light
    local xcodelight = {
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

    -- Configuração do lualine com o tema Xcode Light ajustado
    lualine.setup({
      options = {
        theme = xcodelight,
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
