return {
  "xiyaowong/transparent.nvim",
  config = function()
    local transparent = require("transparent")
    transparent.setup({
      extra_groups = {
        "BufferLine",
        "NeoTree",
        "lualine",
      },
      exclude_groups = {},
    })
  end,
  vim.cmd([[autocmd VimEnter * TransparentEnable]]),
}
