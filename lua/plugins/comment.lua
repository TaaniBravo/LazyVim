return {
  "numToStr/Comment.nvim",
  config = function()
    require("Comment").setup({
      toggler = {
        ---Line-comment toggle keymap
        line = "<C-/>",
        ---Block-comment toggle keymap
        block = "<leader><C-/>",
      },
      ---LHS of operator-pending mappings in NORMAL and VISUAL mode
      opleader = {
        ---Line-comment keymap
        line = "<C-/>",
        ---Block-comment keymap
        block = "<leader><C-/>",
      },
    })
  end,
}
