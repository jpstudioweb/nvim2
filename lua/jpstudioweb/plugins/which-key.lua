return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    -- Configurações do plugin which-key
    require("which-key").setup({
      -- Sua configuração personalizada vem aqui
    })
    -- Registrar atalhos de teclado e suas descrições
    require("which-key").register({
      ["<leader>"] = {
        c = "Descrição do comando c",
        d = "Descrição do comando d",
        g = "LSP",
        -- Adicione descrições adicionais para outras teclas aqui
      },
    })
  end,
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    -- your configuration comes here
  },
}
