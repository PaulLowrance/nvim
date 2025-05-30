local map = vim.keymap

vim.g.mapleader = " "

-- quick exit from insert mode
map.set("i", "jk", "<Esc>")
map.set("i", "jj", "<Esc>")

map.set("n", "<leader>nh", ":nohl<CR>")

-- renames
map.set("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true })

-- find replace
map.set("v", "<C-r>", '"hy:%s/<C-r>h//gc<left><left><left>')

-- move highlighted lines up/down
map.set("v", "J", ":m '>+1<CR>gv=gv")
map.set("v", "K", ":m '<-2<CR>gv=gv")

-- delete single character without copying into register
map.set("n", "x", '"_x')

-- increment/decrement numbers
map.set("n", "<leader>+", "<C-a>") -- increment
map.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
map.set("n", "<leader>sv", "<C-w>v") -- split window vertically
map.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
map.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
map.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- tab management
map.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
map.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
map.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
map.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- Buffer management
map.set("n", "<A-n>", ":bn<CR>") -- switches to the next buffer
map.set("n", "<A-p>", ":bp<CR>") -- switches to the previous buffer
map.set("n", "<A-x>", ":bd<CR>") -- deletes the current buffer

--------------------------------------------------------------------------------------------
-- Plugin bindings
--------------------------------------------------------------------------------------------

map.set("n", "<leader>sm", ":MaximizerToggle<CR>") --toggle split window to maximum

-- map.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle nvim tree
map.set("n", "<leader>e", ":Telescope file_browser<CR>") -- toggle file browser

-- Telescope bindings
local builtin = require("telescope.builtin")
map.set("n", "<leader>ff", builtin.find_files, {})
map.set("n", "<leader>fg", builtin.live_grep, {})
map.set("n", "<leader>fb", builtin.buffers, {})
map.set("n", "<leader>fh", builtin.help_tags, {})

--map.set("n", "<leader>ld", "<cmd>Lspsaga show_line_diagnostics<CR>", { noremap = true, silent = true, buffer = bufnr }) -- show  diagnostics for line
