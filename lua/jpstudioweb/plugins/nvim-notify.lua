return {
  "rcarriga/nvim-notify",
  config = function()
    local notify = require("notify")
    -- configs
    notify.setup({
      -- Ajuste a cor de fundo para combinar com o tema Xcode Light
    })
    -- Após configurar o notify, ajuste os highlights
  end,
}
