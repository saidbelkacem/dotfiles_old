-- local status, _ = pcall(vim.cmd, "colorscheme nord")
-- local status, _ = pcall(vim.cmd, "colorscheme tokyonight")
-- local status, _ = pcall(vim.cmd, "colorscheme gruvbox-baby")
local status, _ = pcall(vim.cmd, "colorscheme onedark")
if not status then
	print("Colorscheme not found!") -- print error if colorscheme not installed
	return
end
