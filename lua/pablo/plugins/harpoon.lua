-- import harpoon plugin safely
local status, harpoon = pcall(require, "harpoon")
if not status then
	return
end

local map = vim.keymap
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<A-h>", function()
	ui.nav_file(1)
end)
vim.keymap.set("n", "<A-j>", function()
	ui.nav_file(2)
end)
vim.keymap.set("n", "<A-k>", function()
	ui.nav_file(3)
end)
vim.keymap.set("n", "<A-l>", function()
	ui.nav_file(4)
end)
