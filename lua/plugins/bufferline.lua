return {
  "akinsho/bufferline.nvim",
  version = "v3.*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        close_command = "bdelete! %d",   -- can be a string | function, see "Mouse actions"
        right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        -- offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
        separator_style = "slant",       -- | "thick" | "thin" | { 'any', 'any' },
      },
    })
  end,
}
