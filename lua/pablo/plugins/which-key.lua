local statue, which_key = pcall(require, "which-key")
if not statue then
	return
end

vim.o.timeout = false
vim.o.timeoutlen = 300

require("which-key").setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	-- refer to the configuration section below
})
