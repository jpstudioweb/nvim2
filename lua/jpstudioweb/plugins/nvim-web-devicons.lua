return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").set_icon({
      gql = {
        icon = "",
        color = "#23575c", -- Um verde mais suave, comum no Gruvbox Dark
        cterm_color = "73", -- Um valor aproximado em cores de terminal
        name = "GraphQL",
      },
    })
  end,
}
