return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
      cmdline = {
        view = "cmdline_popup",
        filter_options = {},
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
