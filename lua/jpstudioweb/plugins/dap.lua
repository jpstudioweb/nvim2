return {
  -- Core DAP
  {
    "mfussenegger/nvim-dap",
    event = "BufReadPre",
    config = function()
      local dap = require("dap")

      -- Configurations of nvim-dap.
      -- set keymaps
      local keymap = vim.keymap
      keymap.set("n", "<leader>ua", "<cmd>lua require'dap'.continue()<CR>", { desc = "DAP Continue" })
      keymap.set("n", "<leader>ub", "<cmd>lua require'dap'.step_over()<CR>", { desc = "DAP Step Over" })
      keymap.set("n", "<leader>uc", "<cmd>lua require'dap'.step_into()<CR>", { desc = "DAP Step Into" })
      keymap.set("n", "<leader>ud", "<cmd>lua require'dap'.step_out()<CR>", { desc = "DAP Step Out" })
      keymap.set("n", "<leader>ue", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Toggle Breakpoint" })
      -- Toggle UI
      keymap.set("n", "<leader>uu", "<cmd>lua require'dapui'.toggle()<CR>", { desc = "Toggle DAP UI" })
      -- Open floating window with variable values
      keymap.set("n", "<leader>uv", "<cmd>lua require'dapui'.eval()<CR>", { desc = "Evaluate variable" })
      -- Para adicionar uma expressão de watch
      keymap.set("n", "<leader>uw", "<cmd>lua require'dapui'.eval()<CR>", { desc = "Watch expression" })

      -- Adicionando o adaptador de depuração Python
      dap.adapters.python = {
        type = "executable",
        command = "python",
        args = { "-m", "debugpy.adapter" },
      }

      -- Configurações específicas para depuração Python
      dap.configurations.python = {
        {
          name = "Launch file",
          type = "python",
          request = "launch",
          program = "${file}",
          pythonPath = function()
            return "python"
          end,
        },
      }
    end,
  },

  -- UI para DAP
  {
    "rcarriga/nvim-dap-ui",
    requires = { "mfussenegger/nvim-dap" },
    config = function()
      require("dapui").setup({
        icons = {
          expanded = "▾",
          collapsed = "▸",
        },
        mappings = {
          -- Use `K` para saltar para a documentação ou variáveis
          hover = "K",
          -- Você pode definir outros atalhos específicos aqui
        },
        sidebar = {
          open_on_start = true,
          elements = {
            -- Você pode escolher os elementos que deseja ver na barra lateral usando estes
            "scopes",
            "breakpoints",
            "stacks",
            "watches",
          },
          width = 40,
          position = "left", -- Mudar para "right" para colocar a barra lateral no lado direito
        },
        tray = {
          open_on_start = true,
          elements = {
            "repl",
          },
          height = 10,
          position = "bottom", -- "bottom" ou "top"
        },
        floating = {
          max_height = nil, -- máximo de altura da janela flutuante
          max_width = nil, -- máximo de largura da janela flutuante
          mappings = {
            close = { "q", "<Esc>" },
          },
        },
        windows = { indent = 1 },
      })
    end,
  },
  -- Virtual text para DAP
  {
    "theHamsta/nvim-dap-virtual-text",
    requires = { "mfussenegger/nvim-dap" },
  },
}
