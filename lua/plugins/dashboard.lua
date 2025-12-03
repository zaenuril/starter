return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Waifu Pixel Art ASCII
    dashboard.section.header.val = {
      "        ⣠⣶⣾⣿⣿⣶⣦⡀        ",
      "       ⣼⣿⡿⠛⠉⠉⠙⢿⣿⣧       ",
      "       ⣿⣿⡇     ⠈⣿⣿       ",
      "       ⣿⣿⡇ ⣀⣀   ⣿⣿       ",
      "       ⢿⣿⣷⣾⣿⣿⣷⣾⣿⡿       ",
      "       ⣼⣿⣿⣿⣿⣿⣿⣿⣿⣧       ",
      "      ⢸⣿⡿⠛⠁ ⠈⠛⢿⣿⣿⡇      ",
      "      ⣿⣿⡇        ⣿⣿⣿      ",
      "      ⣿⣿⡇        ⣿⣿⣿      ",
      "      ⠹⣿⣷⣤⣤⣤⣤⣤⣾⣿⡿⠃      ",
    }

    -- Buttons
    dashboard.section.buttons.val = {
      dashboard.button("e", "  New File", ":ene <BAR> startinsert<CR>"),
      dashboard.button("f", "󰈞  Find File", ":Telescope find_files<CR>"),
      dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
      dashboard.button("t", "  Terminal", ":ToggleTerm<CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }

    -- Footer
    dashboard.section.footer.val = "💜 Waifu Pixel Art Loaded — Happy Coding Sherina"

    dashboard.section.header.opts.hl = "Function"
    dashboard.section.footer.opts.hl = "String"

    alpha.setup(dashboard.config)
end
} 