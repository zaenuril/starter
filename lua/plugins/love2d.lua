return {
  "S1M0N38/love2d.nvim",
  event = "VeryLazy",
  version = "2.*",
  opts = { },
  keys = {
    { "<leader>v", group = "LÖVE", ft = "lua" },
    { "<leader>vv", "<cmd>LoveRun<cr>", ft = "lua", desc = "Run LÖVE" },
    { "<leader>vs", "<cmd>LoveStop<cr>", ft = "lua", desc = "Stop LÖVE" },
  },
}