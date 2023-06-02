local M = {
  core = {
    {
      "<leader>b",
      function()
        require("dap").toggle_breakpoint()
      end,
      desc = "Toggle Breakpoint",
    },
    {
      "<F5>",
      function()
        require("dap").continue()
      end,
      desc = "Continue",
    },
    {
      "<F7>",
      function()
        require("dap").step_into()
      end,
      desc = "Step Into",
    },
    {
      "<F9>",
      function()
        require("dap").step_out()
      end,
      desc = "Step Out",
    },
    {
      "<F8>",
      function()
        require("dap").step_over()
      end,
      desc = "Step Over",
    },
    {
      "<F10>",
      function()
        require("dap").terminate()
      end,
      desc = "Terminate",
    },
  },
}

return M
