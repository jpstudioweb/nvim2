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
        bg = "#282A36", -- Fundo geral do Dracula
      },
      background = {
        fg = "#6272A4", -- Cor do texto inativo no Dracula
        bg = "#282A36", -- Fundo dos itens inativos no Dracula
      },
      buffer_selected = {
        fg = "#F8F8F2", -- Cor do texto selecionado no Dracula
        bg = "#44475A", -- Fundo do item selecionado no Dracula
        bold = true,
      },
      buffer_visible = {
        fg = "#6272A4", -- Cor do texto visível, mas não selecionado no Dracula
        bg = "#282A36", -- Fundo dos itens visíveis no Dracula
      },
      separator = {
        fg = "#6272A4", -- Cor do separador no Dracula
        bg = "#282A36", -- Fundo do separador no Dracula
      },
      separator_selected = {
        fg = "#6272A4", -- Cor do separador selecionado no Dracula
        bg = "#44475A", -- Fundo do separador selecionado no Dracula
      },
      separator_visible = {
        fg = "#6272A4", -- Cor do separador visível, mas não selecionado no Dracula
        bg = "#282A36", -- Fundo do separador visível no Dracula
      },
      -- Outros destaques podem ser adicionados seguindo o mesmo padrão
    },
  },
}
