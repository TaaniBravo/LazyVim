local nls = require("null-ls")

return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = {
    sources = {
      nls.builtins.formatting.prettierd,
      nls.builtins.code_actions.refactoring,
      nls.builtins.code_actions.eslint,
      nls.builtins.diagnostics.flake8,
      nls.builtins.formatting.autoflake,
      -- nls.builtins.formatting.autopep8,
      nls.builtins.formatting.black,
    },
  },
  config = true,
}
