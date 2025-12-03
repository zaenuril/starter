return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    signs = true,
    highlight = {
      before = "", 
      keyword = "wide",
      after = "fg",  
    },
    keywords = {
      TODO = { icon = "T ", color = "info" },
      FIX = { icon = "F ", color = "error" },
      HACK = { icon = "H ", color = "warning" },
      WARN = { icon = "! ", color = "warning" },
      NOTE = { icon = "N ", color = "hint" },
    },
  },
}