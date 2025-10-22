-- ~/.config/nvim/lua/config/themes/init.lua
-- Choose which theme to load here
local active_theme = "melange"
-- local active_theme = "tokyonight"

local ok, theme = pcall(require, "config.themes." .. active_theme)
if not ok then
	vim.notify("Theme '" .. active_theme .. "' not found!", vim.log.levels.WARN)
	return {}
end

return { theme }

