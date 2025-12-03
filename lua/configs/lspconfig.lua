return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    lspconfig.lua_ls.setup({})
    lspconfig.ts_ls.setup({})
    lspconfig.pyright.setup({})
    lspconfig.rust_analyzer.setup({})
    lspconfig.bashls.setup({})
    lspconfig.clangd.setup({})
  end
}