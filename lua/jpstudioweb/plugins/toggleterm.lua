return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      size = 12,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = "horizontal",
      close_on_exit = true,
      shell = vim.o.shell,
    })

    local keymap = vim.keymap.set
    keymap("n", "<leader>tt", "<cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })
    keymap("n", "<leader>t1", "<cmd>ToggleTerm 1<CR>", { desc = "Toggle Terminal 1" })
    keymap("n", "<leader>t2", "<cmd>ToggleTerm 2<CR>", { desc = "Toggle Terminal 2" })
  end,
}
