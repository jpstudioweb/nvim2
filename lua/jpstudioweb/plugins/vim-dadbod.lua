return {
  {
    "tpope/vim-dadbod",
    config = function() end,
  },

  -- vim-dadbod-ui
  {
    "kristijanhusak/vim-dadbod-ui",
    config = function()
      -- atalhos de teclado
      local keymap = vim.keymap.set
      keymap("n", "<leader>db", "<cmd>DBUIToggle<CR>", { desc = "Toggle DB UI" })
      keymap("n", "<leader>da", "<cmd>DBUIAddConnection<CR>", { desc = "Add DB Connection" })
      keymap("n", "<leader>df", "<cmd>DBUIFindBuffer<CR>", { desc = "Find DB Buffer" })
      keymap("n", "<leader>dr", "<cmd>DBUIRenameBuffer<CR>", { desc = "Rename DB Buffer" })
      keymap("n", "<leader>di", "<cmd>DBUILastQueryInfo<CR>", { desc = "Last DB Query Info" })
    end,
  },

  -- vim-dadbod-completion
  {
    "kristijanhusak/vim-dadbod-completion",
    config = function()
      -- Configurações específicas para o vim-dadbod-completion.
    end,
  },
}
