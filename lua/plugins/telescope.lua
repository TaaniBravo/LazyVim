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
  keys = {
    { "<leader>ff", require("telescope.builtin").find_files, desc = "[F]ind [F]iles" },
    { "<leader>ft", require("telescope.builtin").live_grep, desc = "[F]ind [T]ext" },
    { "<leader>sd", require("telescope.builtin").diagnostics, desc = "[S]earch [D]iagnostics" },
    { "<leader>sg", require("telescope.builtin").git_files, desc = "[S]earch [G]it" },
    { "<leader>sc", require("telescope.builtin").git_files, desc = "[S]earch Git [C]ommits" },
    { "<leader>sb", require("telescope.builtin").buffers, desc = "[S]earch [B]uffers" },
    { "<leader>sr", require("telescope.builtin").oldfiles, desc = "[S]earch [R]ecent" },
    {
      "<leader>u",
      ":Telescope undo<CR>",
      desc = "Telescope [U]ndo",
    },
  },
}
