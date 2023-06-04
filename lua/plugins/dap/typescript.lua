-- Typescript DAP setup
local DEBUGGER_PATH = require("mason-registry").get_package("js-debug-adapter"):get_install_path()
  .. "/js-debug/src/dapDebugServer.js"
local M = {}

M.setup = function()
  local dap = require("dap")
  dap.adapters["pwa-node"] = {
    type = "server",
    host = "localhost",
    port = "${port}",
    executable = {
      command = "node",
      -- 💀 Make sure to update this path to point to your installation
      args = {
        DEBUGGER_PATH,
        "${port}",
      },
    },
  }

  for _, language in ipairs({ "typescript", "javascript" }) do
    dap.configurations[language] = {
      {
        type = "pwa-node",
        request = "launch",
        name = "Launch app index",
        program = "${workspaceFolder}/src/index.js",
        cwd = "${workspaceFolder}",
        skipFiles = { "<node_internals>/**", "${workspaceFolder}/node_modules/**/*.js" },
        console = "integratedTerminal",
      },
      {
        type = "pwa-node",
        request = "launch",
        name = "Launch current file",
        program = "${file}",
        cwd = "${workspaceFolder}",
        skipFiles = { "<node_internals>/**", "${workspaceFolder}/node_modules/**/*.js" },
        console = "integratedTerminal",
      },
      {
        type = "pwa-node",
        request = "attach",
        name = "Attach to running process",
        sourceMaps = true,
        processId = require("dap.utils").pick_process,
        cwd = "${workspaceFolder}",
        skipFiles = { "<node_internals>/**", "${workspaceFolder}/node_modules/**/*.js" },
      },
      {
        type = "pwa-node",
        request = "launch",
        name = "Debug Jest Tests",
        -- trace = true, -- include debugger info
        runtimeExecutable = "node",
        runtimeArgs = {
          "${workspaceFolder}/node_modules/jest/bin/jest.js",
          "--runInBand",
        },
        rootPath = "${workspaceFolder}",
        cwd = "${workspaceFolder}",
        console = "integratedTerminal",
        internalConsoleOptions = "neverOpen",
      },
    }
  end
end

return M
