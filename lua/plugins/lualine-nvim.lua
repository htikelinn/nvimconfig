-- ================================================================================================
-- TITLE : lualine.nvim
-- LINKS :
--   > github : https://github.com/nvim-lualine/lualine.nvim
-- ABOUT : A blazing fast and easy to configure Neovim statusline written in Lua.
-- ================================================================================================

-- With config File
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("config.lualine.cosmicink") -- separate config file
	end,
}
-- INFO: defalt lualine theme
-- return {
-- 	"nvim-lualine/lualine.nvim",
--
-- 	config = function()
-- 			require("lualine").setup({
-- 				options = {
-- 				 NOTE: https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
-- 					theme = "powerline_dark",
-- 					icons_enabled = true,
-- 					section_separators = { left = "", right = "" },
-- 					component_separators = "|",
-- 				},
-- 			})
-- 	end,
-- 	dependencies = { "nvim-tree/nvim-web-devicons" },
-- }
