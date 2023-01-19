local setup, tokyonight = pcall(require, "tokyonight")

if not setup then
	print("Tokyonight not found")
	return
end

tokyonight.setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
	light_style = "day", -- The theme is used when the background is set to light
	transparent = true, -- Enable this to disable setting the background color
	terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value for `:help nvim_set_hl`
		comments = { italic = false },
		keywords = { italic = true },
		functions = {},
		variables = {},
		-- Background styles. Can be "dark", "transparent" or "normal"
		sidebars = "dark", -- style for sidebars, see below
		floats = "dark", -- style for floating windows
	},
	sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
	day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
	hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
	dim_inactive = false, -- dims inactive windows
	lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

	--- You can override specific color groups to use other groups or a hex color
	--- function will be called with a ColorScheme table
	---@param colors ColorScheme
	on_colors = function(colors) end,

	--- You can override specific highlights to use other groups or a hex color
	--- function will be called with a Highlights and ColorScheme table
	---@param highlights Highlights
	---@param colors ColorScheme
	on_highlights = function(hl, c)
		local prompt = "#2d3149"
		-- -- scss
		hl["@scss.class_name"] = {
			fg = c.green,
		}
		hl["@scss.class_selector"] = {
			fg = c.green,
		}
		hl["@scss.property_name"] = {
			fg = c.aqua,
		}
		hl["@scss.tag_name"] = {
			fg = c.pink,
		}
		hl["@scss.nesting_selector"] = {
			fg = c.pink,
		}
		hl["@scss.integer_value"] = {
			fg = c.purple,
		}
		hl["@scss.unit"] = {
			fg = c.pink,
		}
		hl["@scss.identifier"] = {
			fg = c.aqua,
		}
		hl["@scss.feature_name"] = {
			fg = c.aqua,
		}
		hl["@scss.plain_value"] = {
			fg = c.white,
		}
	end,
})

-- Lua
vim.cmd([[colorscheme tokyonight-night]])
