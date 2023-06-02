local M = {
  floating_term = function()
    local Terminal = require("toggleterm.terminal").Terminal
    local term = Terminal:new({ direction = "float" })

    local floating_toggle = function()
      term:toggle()
    end

    vim.keymap.set("n", "<A-f>", floating_toggle, { noremap = true, silent = true })
  end,
}

return M
