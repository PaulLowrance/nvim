-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
-- if not status then
--   print("Colorscheme was not found!")
--   return
-- end
function SetColors(colorscheme)
	colorscheme = colorscheme or "nightfly"
	vim.cmd.colorscheme(colorscheme)

	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetColors("sweetie")
