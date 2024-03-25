return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local nvimtree = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- Mudança de cor para as setas de pastas fechadas e abertas no NvimTree para o tema Dracula
    vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#ff79c6 ]]) -- Cor rosa para setas de pastas fechadas
    vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#ff79c6 ]]) -- Cor rosa para setas de pastas abertas

    -- Mudança de cor de fundo do NvimTree para corresponder ao fundo escuro do tema Dracula
    vim.cmd([[ highlight NvimTreeNormal guibg=#282a36 ]]) -- Fundo escuro do Dracula
    vim.cmd([[ highlight NvimTreeNormalNC guibg=#282a36 ]]) -- Fundo escuro do Dracula para o NvimTree quando não está em foco
    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = false,
        adaptive_size = false,
      },
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "",
              arrow_open = "",
            },
          },
        },
      },
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })

    -- set keymaps
    local keymap = vim.keymap

    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
    keymap.set("n", "<leader>ew", "<C-w>", { desc = "Move another panel" })
  end,
}
