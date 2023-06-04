return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, opts)
    local nls = require("null-ls")
    -- table.insert(opts.sources, require("typescript.extensions.null-ls.code-actions"))
    table.insert(opts.sources, nls.builtins.formatting.prettierd)
    table.insert(opts.sources, nls.builtins.formatting.autopep8)
    table.insert(opts.sources, nls.builtins.code_actions.refactoring)
  end,
}
