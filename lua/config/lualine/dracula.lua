require("lualine").setup({
	options = {
		theme = theme,
		icons_enabled = true,
		globalstatus = true,
		section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "" },
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff" },
		lualine_c = { "filename" },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
})

local colors = {
	bg = "#282a36",
	fg = "#f8f8f2",
	pink = "#ff79c6",
	purple = "#bd93f9",
	green = "#50fa7b",
	orange = "#ffb86c",
	red = "#ff5555",
	blue = "#8be9fd",
}

return {
	normal = {
		a = { fg = colors.bg, bg = colors.purple },
		b = { fg = colors.fg, bg = colors.bg },
		c = { fg = colors.fg, bg = colors.bg },
	},
	insert = { a = { fg = colors.bg, bg = colors.green } },
	visual = { a = { fg = colors.bg, bg = colors.orange } },
	replace = { a = { fg = colors.bg, bg = colors.red } },
	command = { a = { fg = colors.bg, bg = colors.blue } },
	inactive = {
		a = { fg = colors.fg, bg = colors.bg },
		b = { fg = colors.fg, bg = colors.bg },
		c = { fg = colors.fg, bg = colors.bg },
	},
}
