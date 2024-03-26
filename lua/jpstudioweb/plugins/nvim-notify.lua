return {
  "rcarriga/nvim-notify",
  config = function()
    local notify = require("notify")
    -- configs
    notify.setup({})
    -- Após configurar o notify, ajuste os highlights
  end,
}
