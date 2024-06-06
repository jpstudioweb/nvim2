return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "tabs",
      separator_style = "thin",
      always_show_bufferline = false,
      show_buffer_close_icons = false,
      show_close_icon = false,
      color_icons = false,
    },
    highlights = {
      fill = {
        ctermbg = "0",
        bg = "#1A1B26", -- Fundo geral do TokyoNight
      },
      background = {
        fg = "#565F89", -- Cor do texto inativo no TokyoNight
        bg = "#1A1B26", -- Fundo dos itens inativos no TokyoNight
      },
      buffer_selected = {
        fg = "#c0caf5", -- Cor do texto selecionado no TokyoNight
        bg = "#2a2e36", -- Fundo do item selecionado no TokyoNight
        bold = true,
      },
      buffer_visible = {
        fg = "#565F89", -- Cor do texto visível, mas não selecionado no TokyoNight
        bg = "#1A1B26", -- Fundo dos itens visíveis no TokyoNight
      },
      separator = {
        fg = "#565F89", -- Cor do separador no TokyoNight
        bg = "#1A1B26", -- Fundo do separador no TokyoNight
      },
      separator_selected = {
        fg = "#565F89", -- Cor do separador selecionado no TokyoNight
        bg = "#2a2e36", -- Fundo do separador selecionado no TokyoNight
      },
      separator_visible = {
        fg = "#565F89", -- Cor do separador visível, mas não selecionado no TokyoNight
        bg = "#1A1B26", -- Fundo do separador visível no TokyoNight
      },
      -- Outros destaques podem ser adicionados seguindo o mesmo padrão
    },
  },
}
