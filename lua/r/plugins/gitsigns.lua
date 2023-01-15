-- import gitsigns plugin safely
local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
	print("gitsings not found")
	return
end

-- configure/enable gitsigns
gitsigns.setup()
