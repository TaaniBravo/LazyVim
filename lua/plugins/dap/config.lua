return function()
  local dap = require("dap")

  -- Use iTerm as external_terminal for macOS.
  if vim.loop.os_uname().sysname == "Darwin" then
    dap.defaults.fallback.external_terminal = {
      command = "/Applications/iTerm.app/Contents/MacOS/iTerm2",
      args = { "-e" },
    }
    dap.defaults.fallback.force_external_terminal = true
  end

  local Config = require("lazyvim.config")
  vim.api.nvim_set_hl(0, "DapStoppedLine", { default = true, link = "Visual" })

  for name, sign in pairs(Config.icons.dap) do
    sign = type(sign) == "table" and sign or { sign }
    vim.fn.sign_define(
      "Dap" .. name,
      { text = sign[1], texthl = sign[2] or "DiagnosticInfo", linehl = sign[3], numhl = sign[3] }
    )
  end

  local namespace = vim.api.nvim_create_namespace("dap-hlng")
  vim.api.nvim_set_hl(namespace, "DapBreakpoint", { fg = "#eaeaeb", bg = "#ffffff" })
  vim.api.nvim_set_hl(namespace, "DapLogPoint", { fg = "#eaeaeb", bg = "#ffffff" })
  vim.api.nvim_set_hl(namespace, "DapStopped", { fg = "#eaeaeb", bg = "#ffffff" })

  vim.fn.sign_define(
    "DapBreakpoint",
    { text = "", texthl = "DiagnosticSignError", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
  )
  vim.fn.sign_define(
    "DapBreakpointRejected",
    { text = "", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
  )
  vim.fn.sign_define(
    "DapLogPoint",
    { text = "", texthl = "DapLogPoint", linehl = "DapLogPoint", numhl = "DapLogPoint" }
  )
  vim.fn.sign_define(
    "DapStopped",
    { text = "", texthl = "DiagnosticSignOk", linehl = "DapStopped", numhl = "DapStopped" }
  )

  require("plugins.dap.python").setup()
  require("plugins.dap.typescript").setup()
end
