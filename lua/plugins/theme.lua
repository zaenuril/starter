return {
  "eldritch-theme/eldritch.nvim",
  -- Load early so colorscheme is applied on startup
  lazy = false,
  priority = 1000,
  config = function()
    -- Try to apply colorscheme immediately
    local ok = pcall(vim.cmd, "colorscheme eldritch")
    if not ok then
      vim.notify("Failed to load colorscheme 'eldritch'", vim.log.levels.WARN)
    end

    -- Re-apply once on VimEnter to avoid being overridden by other startup code
    vim.api.nvim_create_autocmd("VimEnter", {
      once = true,
      callback = function()
        pcall(vim.cmd, "colorscheme eldritch")
      end,
    })
  end,
}
