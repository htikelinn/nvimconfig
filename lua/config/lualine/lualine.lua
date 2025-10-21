local lualine = require("lualine")

local colors = {
	bg = "#1f2232",
	fg = "#c8cacb",
	yellow = "#e0af68",
	cyan = "#2ac3de",
	darkblue = "#0a3b5e",
	green = "#98be65",
	orange = "#ff9e64",
	violet = "#a9a1e1",
	magenta = "#bb9af7",
	blue = "#51afef",
	red = "#f7768e",
}

local theme = {
	normal = {
		a = { fg = colors.bg, bg = colors.blue },
		b = { fg = colors.fg, bg = colors.bg },
		c = { fg = colors.fg, bg = colors.bg },
	},
	insert = { a = { fg = colors.bg, bg = colors.green } },
	visual = { a = { fg = colors.bg, bg = colors.orange } },
	replace = { a = { fg = colors.bg, bg = colors.red } },
	command = { a = { fg = colors.bg, bg = colors.magenta } },
	inactive = {
		a = { fg = colors.fg, bg = colors.bg },
		b = { fg = colors.fg, bg = colors.bg },
		c = { fg = colors.fg, bg = colors.bg },
	},
}

lualine.setup({
	options = {
		theme = theme,
		component_separators = "",
		section_separators = "",
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = {},
		lualine_c = {
			{ "filename", path = 1 },
			{ "branch" },
		},
		lualine_x = {
			{ "diff" },
			{ "diagnostics", sources = { "nvim_diagnostic" } },
			{ "encoding", fmt = string.upper },
			{ "fileformat", fmt = string.upper },
		},
		lualine_y = {},
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
})
