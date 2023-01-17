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
	transparent = false, -- Enable this to disable setting the background color
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
	on_colors = function(colors)
		colors.border = "#A1B5B1"
		colors.brown = "#504945"
		colors.white = "#FFF1F3"
		colors.grey = "#72696A"
		colors.black = "#000000"
		colors.pink = "#FF6188"
		colors.green = "#A9DC76"
		colors.aqua = "#78DCE8"
		colors.yellow = "#FFD866"
		colors.orange = "#FC9867"
		colors.purple = "#AB9DF2"
		colors.pink = "#f3005f"
		colors.bg = "#1d1e1a"
	end,

	--- You can override specific highlights to use other groups or a hex color
	--- function will be called with a Highlights and ColorScheme table
	---@param highlights Highlights
	---@param colors ColorScheme
	on_highlights = function(hl, c)
		local prompt = "#2d3149"
		hl["@type.qualifier"] = {
			fg = c.pink,
		}
		hl["@keyword"] = {
			fg = c.pink,
		}
		hl["@constructor"] = {
			fg = c.green,
		}
		hl["@variable"] = {
			fg = c.white,
		}
		hl["@variable.builtin"] = {
			fg = c.orange,
		}
		hl["@constant"] = {
			fg = c.white,
		}
		hl["@parameter"] = {
			fg = c.white,
		}
		hl["@none"] = {
			fg = c.white,
		}

		hl["@conditional"] = {
			fg = c.pink,
		}
		hl["@type"] = {
			fg = c.green,
		}
		hl["@method"] = {
			fg = c.green,
		}
		hl["@function"] = {
			fg = c.green,
		}
		hl["@function.call"] = {
			fg = c.green,
		}
		hl["@include"] = {
			fg = c.pink,
		}
		hl["@string"] = {
			fg = c.yellow,
		}
		hl["@number"] = {
			fg = c.pink,
		}
		hl["@property"] = {
			fg = c.white,
		}
		--htnml
		hl["@tag"] = {
			fg = c.pink,
		}
		hl["@tag.attribute"] = {
			fg = c.green,
		}
		-- scss
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
		hl.typescriptIdentifierName = {
			fg = c.green,
		}
		hl.TelescopeNormal = {
			bg = c.bg_dark,
			fg = c.fg_dark,
		}
		hl.TelescopeBorder = {
			bg = c.bg_dark,
			fg = c.bg_dark,
		}
		hl.TelescopePromptNormal = {
			bg = prompt,
		}
		hl.TelescopePromptBorder = {
			bg = prompt,
			fg = prompt,
		}
		hl.TelescopePromptTitle = {
			bg = prompt,
			fg = prompt,
		}
		hl.TelescopePreviewTitle = {
			bg = c.bg_dark,
			fg = c.bg_dark,
		}
		hl.TelescopeResultsTitle = {
			bg = c.bg_dark,
			fg = c.bg_dark,
		}
	end,
})

-- Lua
vim.cmd([[colorscheme tokyonight-night]])
