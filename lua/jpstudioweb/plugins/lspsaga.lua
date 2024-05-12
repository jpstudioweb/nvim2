return {
  "nvimdev/lspsaga.nvim",
  config = function()
    require("lspsaga").setup({
      symbol_in_winbar = {
        enable = true,
      },
    })
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
