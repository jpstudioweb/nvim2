return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
  },
  config = function()
    -- import lspconfig plugin
    local lspconfig = require("lspconfig")

    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local keymap = vim.keymap -- for conciseness

    local opts = { noremap = true, silent = true }
    local on_attach = function(client, bufnr)
      -- set keybinds LSP
      keymap.set(
        "n",
        "gR",
        "<cmd>Telescope lsp_references<CR>",
        vim.tbl_extend("force", opts, { desc = "Show LSP references" })
      )
      keymap.set("n", "gD", vim.lsp.buf.declaration, vim.tbl_extend("force", opts, { desc = "Go to declaration" }))
      keymap.set(
        "n",
        "gd",
        "<cmd>Telescope lsp_definitions<CR>",
        vim.tbl_extend("force", opts, { desc = "Show LSP definitions" })
      )
      keymap.set(
        "n",
        "gi",
        "<cmd>Telescope lsp_implementations<CR>",
        vim.tbl_extend("force", opts, { desc = "Show LSP implementations" })
      )
      keymap.set(
        "n",
        "gt",
        "<cmd>Telescope lsp_type_definitions<CR>",
        vim.tbl_extend("force", opts, { desc = "Show LSP type definitions" })
      )
      keymap.set(
        { "n", "v" },
        "<leader>ca",
        vim.lsp.buf.code_action,
        vim.tbl_extend("force", opts, { desc = "See available code actions" })
      )
      keymap.set("n", "<leader>rn", vim.lsp.buf.rename, vim.tbl_extend("force", opts, { desc = "Smart rename" }))
      keymap.set(
        "n",
        "<leader>D",
        "<cmd>Telescope diagnostics bufnr=0<CR>",
        vim.tbl_extend("force", opts, { desc = "Show buffer diagnostics" })
      )
      keymap.set(
        "n",
        "<leader>d",
        vim.diagnostic.open_float,
        vim.tbl_extend("force", opts, { desc = "Show line diagnostics" })
      )
      keymap.set(
        "n",
        "[d",
        vim.diagnostic.goto_prev,
        vim.tbl_extend("force", opts, { desc = "Go to previous diagnostic" })
      )
      keymap.set("n", "]d", vim.diagnostic.goto_next, vim.tbl_extend("force", opts, { desc = "Go to next diagnostic" }))
      keymap.set(
        "n",
        "K",
        vim.lsp.buf.hover,
        vim.tbl_extend("force", opts, { desc = "Show documentation for what is under cursor" })
      )
      keymap.set("n", "<leader>rs", ":LspRestart<CR>", vim.tbl_extend("force", opts, { desc = "Restart LSP" }))
    end

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Change the Diagnostic symbols in the sign column (gutter)
    -- (not in youtube nvim video)
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    -- configure html server
    lspconfig["html"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure typescript server with plugin
    lspconfig["tsserver"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure css server
    lspconfig["cssls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure tailwindcss server
    lspconfig["tailwindcss"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    -- configure emmet language server
    lspconfig["emmet_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      filetypes = { "html", "eruby", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less" },
    })

    -- configure ruby server
    lspconfig["ruby_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig["solargraph"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        solargraph = {
          diagnostics = true,
          commandPath = "/home/jpstudioweb/.rbenv/shims/solargraph",
          useBundler = {
            "bundle",
            "exec",
          },
          completion = true,
          hover = false,
          formatting = false,
          autoformat = false,
          symbols = true,
          definitions = true,
          rename = false,
          references = true,
          folding = false,
        },
      },
    })

    -- configure lua server (with special settings)
    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = { -- custom settings for lua
        Lua = {
          -- make the language server recognize "vim" global
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            -- make language server aware of runtime files
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })

    -- configure markdown server
    lspconfig["marksman"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })
  end,
}
