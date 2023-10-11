return {
  -- Core DAP
  {
    "mfussenegger/nvim-dap",
    event = "BufReadPre",
    config = function()
      local dap = require("dap")

      -- Configurations of nvim-dap.
      -- set keymaps
      local keymap = vim.keymap -- for conciseness
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

      -- adaptador Node.js:
      dap.adapters.node2 = {
        type = "executable",
        command = "node",
        args = { os.getenv("HOME") .. "/dev/microsoft/vscode-node-debug2/out/src/nodeDebug.js" },
      }

      dap.configurations.javascript = {
        {
          name = "Launch",
          type = "node2",
          request = "launch",
          program = "${file}",
          cwd = vim.fn.getcwd(),
          sourceMaps = true,
          protocol = "inspector",
          console = "integratedTerminal",
        },
        {
          -- For this to work you need to make sure the node process is started with the `--inspect` flag.
          name = "Attach to process",
          type = "node2",
          request = "attach",
          processId = require("dap.utils").pick_process,
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
        -- Sua configuração para dap-ui vai aqui.
        -- Por exemplo:
        -- sidebar = {
        --   open_on_start = true,
        --   ...
        -- },
        -- Toggle UI
      })
    end,
  },
  -- Virtual text para DAP
  {
    "theHamsta/nvim-dap-virtual-text",
    requires = { "mfussenegger/nvim-dap" },
  },
}
