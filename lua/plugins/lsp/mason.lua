return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    opts.ensure_installed = opts.ensure_installed or {}
    table.insert(opts.ensure_installed, "pyright")
    table.insert(opts.ensure_installed, "js-debug-adapter")
    table.insert(opts.ensure_installed, "prettierd")
    table.insert(opts.ensure_installed, "autopep8")
  end,
}
