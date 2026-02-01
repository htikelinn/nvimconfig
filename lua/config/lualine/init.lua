-- ~/.config/nvim/lua/config/lualine/init.lua

local theme_name = "tokyonight"

-- Try loading the theme safely
local ok, theme = pcall(require, "config.lualine." .. theme_name)
if not ok then
	vim.notify("Lualine theme '" .. theme_name .. "' not found. Falling back to auto.", vim.log.levels.WARN)
	theme = "auto"
end

require("lualine").setup({
	options = {
		theme = theme, -- should be a table or string name, not `true`
		-- section_separators = { left = "", right = "" },
		-- component_separators = { left = "", right = "" },
	},
})

vim.api.nvim_create_user_command("LualineTheme", function(opts)
	local ok, new_theme = pcall(require, "config.lualine." .. opts.args)
	if not ok then
		vim.notify("Theme '" .. opts.args .. "' not found!", vim.log.levels.ERROR)
		return
	end
	require("lualine").setup({ options = { theme = new_theme } })
	vim.notify("Lualine theme switched to: " .. opts.args)
end, {
	nargs = 1,
	complete = function()
		return { "cosmicink", "dracula", "bubbles", "evil_lualine", "default", "slanted-gaps", "tokyonight" }
	end,
})
