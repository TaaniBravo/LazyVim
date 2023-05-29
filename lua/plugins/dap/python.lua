local M = {}

function M.setup()
  require("dap-python").setup("python", {})

  require("dap").adapters.python = {
    type = "executable",
    command = os.getenv("HOME") .. "/.virtualenvs/debugpy/bin/python",
    args = { "-m", "debugpy.adapter" },
  }

  require("dap").configurations.python = {
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
