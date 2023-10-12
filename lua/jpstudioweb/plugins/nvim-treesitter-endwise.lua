return {
  "RRethy/nvim-treesitter-endwise",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require("nvim-treesitter.configs").setup({
      endwise = {
        enable = true,
      },
    })
  end,
}
