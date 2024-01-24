return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
      cmdline = {
        view = "cmdline_popup",
        opts = { buf_options = { filetype = "vim" } },
        filter_options = {
          auto_open = true,
        },
      },
      messages = {
        enabled = true,
        view = "notify",
        view_error = "notify",
        view_warn = "notify",
        view_history = "messages",
        view_search = "virtualtext",
      },
      popupmenu = {
        enabled = true,
        backend = "nui",
      },
      redirect = {
        view = "popup",
        filter = { event = "msg_show" },
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
  },
}
