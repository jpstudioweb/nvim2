return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").set_icon({
      gql = {
        icon = "",
        color = "#b58900",
        cterm_color = "136",
        name = "GraphQL",
      },
    })
  end,
}
