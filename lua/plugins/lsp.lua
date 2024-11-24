-- lua/plugins/lsp.lua

return {
  -- nvim-lspconfig for setting up Pyright
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Configure Pyright LSP
      require("lspconfig").pyright.setup({})
    end,
  },

  -- Optional: Mason for managing LSP servers
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "pyright" },  -- Ensure Pyright is installed
      })
    end,
  },
}

