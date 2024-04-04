return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").set_icon({
      gql = {
        icon = "",
        color = "#b8bb26",
        cterm_color = "107",
        name = "GraphQL",
      },
    })
  end,
}
