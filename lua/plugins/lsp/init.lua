-- add pyright to lspconfig
local M = {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = require("plugins.lsp.servers"),
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "json", "json5", "jsonc" })
      end
    end,
  },
  {
    "b0o/SchemaStore.nvim",
    version = false, -- last release is way too old
  },
  { "m-demare/hlargs.nvim", config = true },
  { "jose-elias-alvarez/typescript.nvim" },
  setup = require("plugins.lsp.setup"),
}

vim.list_extend(M, require("plugins.lsp.mason"))
vim.list_extend(M, require("plugins.lsp.null-ls"))

return M
