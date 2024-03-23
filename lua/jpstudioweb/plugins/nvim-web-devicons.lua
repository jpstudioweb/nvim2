return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").set_icon({
      gql = {
        icon = "",
        color = "#23575c",
        cterm_color = "73",
        name = "GraphQL",
      },
    })
  end,
}
