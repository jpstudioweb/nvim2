return {
  "rcarriga/nvim-notify",
  config = function()
    local notify = require("notify")
    -- configs
    notify.setup({
      background_colour = "#000000",
    })
  end,
}
