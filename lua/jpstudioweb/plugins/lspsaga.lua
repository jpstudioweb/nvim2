return {
  "nvimdev/lspsaga.nvim",
  config = function()
    require("lspsaga").setup({})
    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true,
      },
    })
  end,
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
}
