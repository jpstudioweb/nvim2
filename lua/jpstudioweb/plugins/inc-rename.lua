return {
  {
    "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup()

      local keymap = vim.keymap.set

      keymap("n", "<leader>rn", ":IncRename", { desc = "Rename words" })
    end,
  },
}
