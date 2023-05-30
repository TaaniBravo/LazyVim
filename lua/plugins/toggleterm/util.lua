local M = {
  floating_term = function()
    local Terminal = require("toggleterm.terminal").Terminal
    local term = Terminal:new({ direction = "float" })

    local floating_toggle = function()
      term:toggle()
    end

    vim.keymap.set("n", "<A-f>", floating_toggle, { noremap = true, silent = true })
  end,
  lazygit = function()
    local Terminal = require("toggleterm.terminal").Terminal
    local lazygit = Terminal:new({
      cmd = "lazygit",
      dir = "git_dir",
      direction = "float",
      float_opts = {
        border = "double",
      },
      -- function to run on opening the terminal
      on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(
          term.bufnr,
          "n",
          "q",
          "<cmd>close<CR>",
          { noremap = true, silent = true, desc = "Open Floating Terminal" }
        )
      end,
      -- function to run on closing the terminal
      on_close = function(_)
        vim.cmd("startinsert!")
      end,
    })

    function _lazygit_toggle()
      lazygit:toggle()
    end

    vim.api.nvim_set_keymap(
      "n",
      "<leader>gl",
      "<cmd>lua _lazygit_toggle()<CR>",
      { noremap = true, silent = true, desc = "Open LazyGit" }
    )
  end,
}

return M
