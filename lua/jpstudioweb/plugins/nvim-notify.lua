return {
  "rcarriga/nvim-notify",
  config = function()
    local notify = require("notify")
    -- configs
    notify.setup({
      -- Ajuste a cor de fundo para combinar com o tema Xcode Light
      background_colour = "#ffffff",
    })
    -- Após configurar o notify, ajuste os highlights
    vim.cmd([[
      " Ajustar o background de todas as notificações para algo claro, porém distintivo
      highlight NotifyBackground guibg=#ecf5ff

      " Ajustar a cor do título para algo mais legível, seguindo o esquema Xcode Light
      highlight NotifyINFOTitle guifg=#23575c guibg=#ffffff
      highlight NotifyWARNTitle guifg=#ffaf00 guibg=#ffffff
      highlight NotifyERRORTitle guifg=#d12f1b guibg=#ffffff
      highlight NotifyDEBUGTitle guifg=#5c6873 guibg=#ffffff
      highlight NotifyTRACETitle guifg=#8a99a6 guibg=#ffffff

      " Ajuste adicional para o corpo da mensagem, mantendo a legibilidade com o tema claro
      highlight NotifyINFOBody guifg=#262626 guibg=#ffffff
      highlight NotifyWARNBody guifg=#262626 guibg=#ffffff
      highlight NotifyERRORBody guifg=#262626 guibg=#ffffff
      highlight NotifyDEBUGBody guifg=#262626 guibg=#ffffff
      highlight NotifyTRACEBody guifg=#262626 guibg=#ffffff
    ]])
  end,
}
