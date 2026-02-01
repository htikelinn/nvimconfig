-- ~/.config/nvim/lua/configs/lualine/setup.lua
require("lualine").setup({
	options = {
		-- theme = theme,
		icons_enabled = true,
		globalstatus = true,
		section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff" },
		lualine_c = { "filename" },
		lualine_x = {
			{
				require("music-controls")._statusline,
				-- You can optionally add a condition to only show it if a player is running
			},
			"encoding",
			"fileformat",
			"filetype",
		},
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
})
local colors = {
	bg = "#1a1b26",
	fg = "#c0caf5",
	blue = "#7aa2f7",
	green = "#9ece6a",
	red = "#f7768e",
	yellow = "#e0af68",
	cyan = "#7dcfff",
	magenta = "#bb9af7",
}

return {
	normal = {
		a = { bg = colors.blue, fg = colors.bg, gui = "bold" },
		b = { bg = "#3b4261", fg = colors.fg },
		c = { bg = colors.bg, fg = colors.fg },
	},
	insert = {
		a = { bg = colors.green, fg = colors.bg, gui = "bold" },
	},
	visual = {
		a = { bg = colors.magenta, fg = colors.bg, gui = "bold" },
	},
	replace = {
		a = { bg = colors.red, fg = colors.bg, gui = "bold" },
	},
	inactive = {
		a = { bg = colors.bg, fg = colors.blue },
		b = { bg = colors.bg, fg = colors.fg },
		c = { bg = colors.bg, fg = colors.fg },
	},
}
