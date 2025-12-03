return {
  "akinsho/toggleterm.nvim",
  version = "*",
  cmd = { "ToggleTerm" },
  keys = {
    { "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  },
  config = function()
    local ok, toggleterm = pcall(require, "toggleterm")
    if not ok then
      vim.notify("toggleterm.nvim not installed", vim.log.levels.WARN)
      return
    end

    toggleterm.setup {
      size = 40,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      persist_size = true,
      direction = "vertical",
      close_on_exit = true,
      shell = vim.o.shell,
    }

    -- Convenience keymap to toggle terminal
    vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { noremap = true, silent = true, desc = "Toggle terminal" })

    -- Example: create a terminal for lazygit (if installed)
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "vertical", close_on_exit = true })
    function _lazygit_toggle()
      lazygit:toggle()
    end
    vim.keymap.set("n", "<leader>tg", _lazygit_toggle, { desc = "Toggle LazyGit" })
  end,
}
