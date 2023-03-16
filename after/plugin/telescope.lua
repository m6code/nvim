local builtin = require('telescope.builtin')
-- Find files in current working directory
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- Find git files only
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- Search string occurrence in files
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
