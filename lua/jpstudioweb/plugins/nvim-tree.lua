return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local nvimtree = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- change color for arrows in tree
    vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#a7c080 ]])
    vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#a7c080 ]])
    -- vim.cmd([[ highlight NvimTreeNormal ctermbg=NONE guibg=NONE ]])
    -- vim.cmd([[ highlight NvimTreeNormalNC ctermbg=NONE guibg=NONE ]])

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
