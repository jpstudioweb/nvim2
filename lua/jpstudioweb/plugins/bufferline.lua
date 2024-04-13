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
        bg = "#ffffff", -- Fundo geral, claro no xcodelight
      },
      background = {
        fg = "#8a99a6", -- Cor do texto inativo, seguindo o comentário xcodelight
        bg = "#ffffff", -- Fundo dos itens inativos
      },
      buffer_selected = {
        fg = "#262626", -- Cor do texto selecionado, preto para melhor contraste
        bg = "#ecf5ff", -- Fundo do item selecionado, azul claro suave para destacar
        bold = true,
      },
      buffer_visible = {
        fg = "#8a99a6", -- Cor do texto visível, mas não selecionado
        bg = "#ffffff", -- Fundo dos itens visíveis
      },
      separator = {
        fg = "#cdcdcd", -- Cor do separador, cinza claro
        bg = "#ffffff", -- Fundo do separador, branco para uniformidade
      },
      separator_selected = {
        fg = "#cdcdcd", -- Cor do separador selecionado, cinza claro para uniformidade
      },
      separator_visible = {
        fg = "#cdcdcd", -- Cor do separador visível, mas não selecionado
        bg = "#ffffff", -- Fundo do separador visível, branco para uniformidade
      },
      -- Outros destaques podem ser adicionados seguindo o mesmo padrão
    },
  },
}
