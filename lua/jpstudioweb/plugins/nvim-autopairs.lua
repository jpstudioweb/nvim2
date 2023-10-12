return {
  "windwp/nvim-autopairs",
  event = { "InsertEnter" },
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    -- import nvim-autopairs
    local autopairs = require("nvim-autopairs")

    -- configure autopairs
    autopairs.setup({
      check_ts = true, -- enable treesitter
      ts_config = {
        lua = { "string" }, -- don't add pairs in lua string treesitter nodes
        javascript = { "template_string" }, -- don't add pairs in javscript template_string treesitter nodes
        java = false, -- don't check treesitter on java
      },
    })

    -- Adicionar regra específica para = em tags HTML acrescenta um ""
    local Rule = require("nvim-autopairs.rule")
    autopairs.add_rule(Rule("=", '""', "html")
      :with_pair(function(_, _, _, _)
        local prev_col = vim.api.nvim_win_get_cursor(0)[2]
        local prev_char = vim.api
          .nvim_buf_get_lines(0, vim.api.nvim_win_get_cursor(0)[1] - 1, vim.api.nvim_win_get_cursor(0)[1], false)[1]
          :sub(prev_col, prev_col)
        return prev_char ~= '"'
      end)
      :with_move(function(_, _, _, _)
        local next_col = vim.api.nvim_win_get_cursor(0)[2] + 1
        local next_char = vim.api
          .nvim_buf_get_lines(0, vim.api.nvim_win_get_cursor(0)[1] - 1, vim.api.nvim_win_get_cursor(0)[1], false)[1]
          :sub(next_col, next_col)
        return next_char == '"'
      end)
      :with_del(function(_, _, _, _)
        local col = vim.api.nvim_win_get_cursor(0)[2] + 1
        local next_char = vim.api
          .nvim_buf_get_lines(0, vim.api.nvim_win_get_cursor(0)[1] - 1, vim.api.nvim_win_get_cursor(0)[1], false)[1]
          :sub(col, col)
        return next_char == '"'
      end))

    -- import nvim-autopairs completion functionality
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")

    -- import nvim-cmp plugin (completions plugin)
    local cmp = require("cmp")

    -- make autopairs and completion work together
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
