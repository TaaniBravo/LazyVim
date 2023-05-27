local config = function()
	local mark = require("harpoon.mark")
	local ui = require("harpoon.ui")

	vim.keymap.set("n", "<leader>af", mark.add_file, { desc = "[A]dd [F]ile to Harpoon" })
	vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Toggle Harpoon menu" })

	vim.keymap.set("n", "<A-Up>", function()
		ui.nav_file(1)
	end, { desc = "Harpoon file 1" })
	vim.keymap.set("n", "<A-Down>", function()
		ui.nav_file(2)
	end, { desc = "Harpoon file 2" })
	vim.keymap.set("n", "<A-Left>", function()
		ui.nav_file(3)
	end, { desc = "Harpoon file 3" })
	vim.keymap.set("n", "<A-Right>", function()
		ui.nav_file(4)
	end, { desc = "Harpoon file 4" })
end

return {
	"theprimeagen/harpoon",
	config = config
}
