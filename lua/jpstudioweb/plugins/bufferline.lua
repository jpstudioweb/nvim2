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
      color_icons = true,
    },
    highlights = {
      fill = {
        ctermbg = "0",
        bg = "#282828", -- Fundo geral do Gruvbox Dark
      },
      background = {
        fg = "#a89984", -- Cor do texto inativo no Gruvbox Dark
        bg = "#282828", -- Fundo dos itens inativos no Gruvbox Dark
      },
      buffer_selected = {
        fg = "#ebdbb2", -- Cor do texto selecionado no Gruvbox Dark
        bg = "#3c3836", -- Fundo do item selecionado no Gruvbox Dark
        bold = true,
      },
      buffer_visible = {
        fg = "#a89984", -- Cor do texto visível, mas não selecionado no Gruvbox Dark
        bg = "#282828", -- Fundo dos itens visíveis no Gruvbox Dark
      },
      separator = {
        fg = "#a89984", -- Cor do separador no Gruvbox Dark
        bg = "#282828", -- Fundo do separador no Gruvbox Dark
      },
      separator_selected = {
        fg = "#a89984", -- Cor do separador selecionado no Gruvbox Dark
        bg = "#3c3836", -- Fundo do separador selecionado no Gruvbox Dark
      },
      separator_visible = {
        fg = "#a89984", -- Cor do separador visível, mas não selecionado no Gruvbox Dark
        bg = "#282828", -- Fundo do separador visível no Gruvbox Dark
      },
      -- Outros destaques podem ser adicionados seguindo o mesmo padrão
    },
  },
}
