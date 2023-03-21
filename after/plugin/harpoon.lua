local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
-- Add file to harpoon menu
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- Switch between files
vim.keymap.set("n", "<C-Y>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-U>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-I>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-O>", function() ui.nav_file(4) end)
