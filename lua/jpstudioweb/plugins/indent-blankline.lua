return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
    config = function()
      local ibl = require("ibl")
      ibl.setup({})
    end,
  },
}
