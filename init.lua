-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- load plugins
require("lazy").setup("plugins")

-- basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.list = true
 
-- tab spacing
vim.opt.tabstop = 4       -- 1 tab = 4 spasi
vim.opt.shiftwidth = 4    -- Indentasi = 4 spasi
vim.opt.softtabstop = 4   -- Backspace behavior