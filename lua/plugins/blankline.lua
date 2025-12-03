return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = "BufReadPre",
  opts = {
    scope = {
      enabled = true,
      char = "┃",
      show_start = true,
      show_end = true,
      highlight = { "Function", "Label" },
      priority = 500,
    },
  },
}
