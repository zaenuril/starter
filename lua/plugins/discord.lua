return {
  "andweeb/presence.nvim",
  event = "VeryLazy",
  config = function()
    require("presence").setup {
      auto_update = true,
      neovim_image_text = "Neovim",
      main_image = "neovim",
      client_id = "674610158722220032",
      buttons = true,
      show_time = true,
    }
  end,
}
