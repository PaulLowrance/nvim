-- import transparent plugin safely
local transparent_status, transparent = pcall(require, "transparent")
if not transparent_status then
	return
end

require("transparent").setup({
	extra_groups = {
		"BufferLineTabClose",
		"BufferlineBufferSelected",
		"BufferLineFill",
		"BufferLineBackground",
		"BufferLineSeparator",
		"BufferLineIndicatorSelected",
	},
	exclude_groups = {},
})
