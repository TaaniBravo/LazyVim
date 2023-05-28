return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    "debugloop/telescope-undo.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
      require("telescope").load_extension("undo")
    end,
  },
}
