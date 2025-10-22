local lualine = require("lualine")

-- Choose your theme by name (e.g. cosmicink, dracula)
local theme_name = "cosmicink"

-- Load your custom theme from configs/lualine/<theme_name>.lua
local ok, theme = pcall(require, "config.lualine." .. theme_name)
if not ok then
	vim.notify("Lualine theme '" .. theme_name .. "' not found. Falling back to auto.", vim.log.levels.WARN)
	theme = "auto" -- fallback to default theme
end

vim.api.nvim_create_user_command("LualineTheme", function(opts)
	local theme = require("config.lualine." .. opts.args)
	require("lualine").setup({ options = { theme = theme } })
	vim.notify("Lualine theme switched to: " .. opts.args)
end, {
	nargs = 1,
	complete = function()
		return { "cosmicink", "dracula", "bubbles", "evil_lualine", "lualine", "slanted-gaps", "tokyonight" }
	end,
})
