return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "lua-language-server",
          "clangd",
          "pyright",
          "typescript-language-server",
          "html-lsp",
          "css-lsp",
          "rust-analyzer",
          "bash-language-server",
          "gopls",
        },
        automatic_installation = true,
      }
    end,
  },
}
