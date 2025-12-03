return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "│",
      highlight = "Comment",
    },
    scope = {
      enabled = true,
      show_start = false,
      show_end = false,
      highlight = "Function",
    },
    whitespace = {
      remove_blankline_trail = false, },
    },
}