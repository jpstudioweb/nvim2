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

    -- import nvim-autopairs completion functionality
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")

    -- import nvim-cmp plugin (completions plugin)
    local cmp = require("cmp")

    -- Adiciona a regra para Django template tags {% %}
    local Rule = require("nvim-autopairs.rule")
    autopairs.add_rule(Rule("{%", "%", "htmldjango"))

    -- make autopairs and completion work together
    cmp.event:on("confirm_done", function(e)
      if e.completed_item and (e.completed_item.kind ~= "Function" and e.completed_item.kind ~= "Method") then
        cmp_autopairs.on_confirm_done()
      end
    end)
  end,
}
