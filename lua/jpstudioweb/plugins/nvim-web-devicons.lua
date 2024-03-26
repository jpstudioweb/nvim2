return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").set_icon({
      gql = {
        icon = "",
        color = "#6272a4",
        cterm_color = "73",
        name = "GraphQL",
      },
    })
  end,
}
