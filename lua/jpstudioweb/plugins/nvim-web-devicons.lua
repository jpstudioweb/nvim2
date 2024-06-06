return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").set_icon({
      gql = {
        icon = "",
        -- color = "#7aa2f7",
        -- cterm_color = "136",
        name = "GraphQL",
      },
    })
  end,
}
