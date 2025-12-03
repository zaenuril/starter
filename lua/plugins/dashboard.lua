return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Waifu Pixel Art ASCII
    dashboard.section.header.val = {
      [[                 _            ____                              ]],
      [[                : \           |   \    .                        ]],
      [[                |  \ .        |    :   |\            /\         ]],
      [[             .  |   :|\__     |    |   | \          /  \        ]],
      [[             |\ |   |! \ \    |    |   | |\        /   /        ]],
      [[\"-.______   | \:   ||\ \ \   |    |   | | \      /   /         ]],
      [[ \_       "-_|  |\  || \ \/   |    |   | ! |\____/  _/-. /\     ]],
      [[   "-_   ____:  |_\ ||  \/  ___\  __  _//  | |  ___ \---" /     ]],
      [[      \  \   |  _____,  /___\___\/ / /   \_! |  // _/  / /      ]],
      [[    ___\_ \__|  |    | __. _/____ / /     /  > // /    \/       ]],
      [[  //_________|  /    |/  |/  \__// /     /  /_/ \/              ]],
      [[             | /     |   :      | /     /__/                    ]],
      [[             |/                 |/   E V A N G E L I O N        ]],
    }
    
    -- Footer
    dashboard.section.footer.val = "Welcome To My Playground"

    -- Buttons
    dashboard.section.buttons.val = {
      dashboard.button("e", "  New File", ":ene <BAR> startinsert<CR>"),
      dashboard.button("f", "󰈞  Find File", ":Telescope find_files<CR>"),
      dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }


    dashboard.section.header.opts.hl = "Function"
    dashboard.section.footer.opts.hl = "String"

    alpha.setup(dashboard.config)
end
} 