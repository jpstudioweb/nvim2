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
        bg = "#fbf1c7", -- Fundo geral do Gruvbox Light
      },
      background = {
        fg = "#7c6f64", -- Cor do texto inativo no Gruvbox Light
        bg = "#fbf1c7", -- Fundo dos itens inativos no Gruvbox Light
      },
      buffer_selected = {
        fg = "#3c3836", -- Cor do texto selecionado no Gruvbox Light
        bg = "#ebdbb2", -- Fundo do item selecionado no Gruvbox Light
        bold = true,
      },
      buffer_visible = {
        fg = "#7c6f64", -- Cor do texto visível, mas não selecionado no Gruvbox Light
        bg = "#fbf1c7", -- Fundo dos itens visíveis no Gruvbox Light
      },
      separator = {
        fg = "#7c6f64", -- Cor do separador no Gruvbox Light
        bg = "#fbf1c7", -- Fundo do separador no Gruvbox Light
      },
      separator_selected = {
        fg = "#7c6f64", -- Cor do separador selecionado no Gruvbox Light
        bg = "#ebdbb2", -- Fundo do separador selecionado no Gruvbox Light
      },
      separator_visible = {
        fg = "#7c6f64", -- Cor do separador visível, mas não selecionado no Gruvbox Light
        bg = "#fbf1c7", -- Fundo do separador visível no Gruvbox Light
      },
      -- Outros destaques podem ser adicionados seguindo o mesmo padrão
    },
  },
}
