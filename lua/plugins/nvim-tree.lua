return {
  "nvim-tree/nvim-tree.lua",
  enabled = false,
  lazy = false,
  keys = {
    {
      "<leader><Tab>",
      ":NvimTreeToggle<CR>",
      desc = "Toggle Working Directory Tree",
      noremap = true,
      silent = true,
    },
    {
      "<leader>t",
      vim.cmd.NvimTreeToggle,
      desc = "Focus NvimTree",
      noremap = true,
      silent = true,
    },
    {
      "<leader><leader>t",
      vim.cmd.NvimTreeFindFile,
      desc = "NvimTree Find File",
      noremap = true,
      silent = true,
    },
  },
  config = function()
    -- disable netrw at the very start of your init.lua (strongly advised)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- set termguicolors to enable highlight groups
    vim.opt.termguicolors = true
    require("nvim-tree").setup()
  end,
}
