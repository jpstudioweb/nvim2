return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local lualine = require("lualine")
    local colors = {
      black = "#0e0e0e",
      white = "#ffffff",
      gray = "#808080", -- Um cinza para detalhes se necessário
    }

    -- Configuração das seções do Lualine
    local sections = {
      normal = {
        a = { fg = colors.white, bg = colors.black, gui = "bold" },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white, bg = colors.black },
      },
      insert = {
        a = { fg = colors.white, bg = colors.black, gui = "bold" },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white, bg = colors.black },
      },
      visual = {
        a = { fg = colors.white, bg = colors.black, gui = "bold" },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white, bg = colors.black },
      },
      replace = {
        a = { fg = colors.white, bg = colors.black, gui = "bold" },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white, bg = colors.black },
      },
      command = {
        a = { fg = colors.white, bg = colors.black, gui = "bold" },
        b = { fg = colors.white, bg = colors.black },
        c = { fg = colors.white, bg = colors.black },
      },
      inactive = {
        a = { fg = colors.gray, bg = colors.black, gui = "bold" },
        b = { fg = colors.gray, bg = colors.black },
        c = { fg = colors.gray, bg = colors.black },
      },
    }

    -- Configuração do Lualine
    lualine.setup({
      options = {
        theme = sections, -- Usar as seções configuradas acima como tema
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
