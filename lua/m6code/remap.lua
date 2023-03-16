-- Remap the leader key to use space
vim.g.mapleader = " "
-- Remap the :Ex file explorer command to use <space>pv in normal mode 
-- vim.keymap.set(mode, newKeyMap, command2MapTo)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- SAVING FILES ---
-- Remap :w write to file command to Ctrl+s to save file in normal mode
vim.keymap.set("n", "<C-s>", vim.cmd.w)
-- Remap :w write to file command to Ctrl+s to save file in normal mode
vim.keymap.set("i", "<C-s>", vim.cmd.w)


