return {
  "akinsho/bufferline.nvim",
  version = "v3.*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      close_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
      right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
      offsets = { { filetype = "neo-tree", text = "", padding = 0 } },
      separator_style = "slant", -- | "thick" | "thin" | { 'any', 'any' },
    },
  },
}
