return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      --[[ things you want to change go here]]
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        elseif term.direction == "float" then
          return 60
        end
      end,
      open_mapping = [[<A-h>]],
      autochdir = true,
      shade_terminals = false,
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)
      require("plugins.toggleterm.util").floating_term()
      require("plugins.toggleterm.util").lazygit()
    end,
  },
}
