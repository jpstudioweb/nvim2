return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "kyazdani42/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")

    -- Cores do tema Everforest
    local colors = {
      bg = "#2f383e",
      fg = "#d3c6aa",
      yellow = "#dbbc7f",
      cyan = "#83c092",
      darkblue = "#7fbbb3",
      green = "#a7c080",
      orange = "#e67e80",
      violet = "#d699b6",
      magenta = "#d699b6",
    }

    -- Definição do tema para lualine baseado no Everforest
    local everforest_theme = {
      normal = {
        a = { bg = colors.green, fg = colors.bg, gui = "bold" },
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

    -- Configuração do lualine com o tema modificado
    lualine.setup({
      options = {
        theme = everforest_theme,
        -- outras opções ...
      },
      -- outras seções ...
    })
  end,
}
