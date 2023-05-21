function MyPen(color)
	color = color or "material"
	vim.cmd.colorscheme(color)
	-- Set a transparent background
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

-- MyPen()
