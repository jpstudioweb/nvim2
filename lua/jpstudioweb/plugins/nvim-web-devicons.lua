return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").set_icon({
      gql = {
        icon = "",
        color = "#d3869b",
        cterm_color = "175",
        name = "GraphQL",
      },
    })
  end,
}
