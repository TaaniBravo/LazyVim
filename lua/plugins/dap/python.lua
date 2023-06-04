local M = {}

function M.setup()
  local dap = require("dap")
  require("dap-python").setup("python", {})

  if not dap.adapters.python then
    dap.adapters.python = {
      type = "executable",
      command = os.getenv("HOME") .. "/.virtualenvs/debugpy/bin/python",
      args = { "-m", "debugpy.adapter" },
    }
  end

  dap.configurations.python = {
    {
      name = "Python: Current File",
      type = "python",
      request = "launch",
      program = "${file}",
      console = "externalTerminal",
    },
  }
end

return M
