return {
	{
		"goolord/alpha-nvim",
		dependencies = { "echasnovski/mini.icons" },
		config = function()
			local startify = require("alpha.themes.startify")

			-- Use devicons instead of mini icons
			startify.file_icons.provider = "devicons"

			-- Add ASCII art header
			startify.section.header.val = {
				[[ $$\   $$\ $$$$$$$\  $$\             $$\   $$\ $$\    $$\ $$$$$$\ $$\      $$\ ]],
				[[ $$ |  $$ |$$  __$$\ $$ |            $$$\  $$ |$$ |   $$ |\_$$  _|$$$\    $$$ |]],
				[[ $$ |  $$ |$$ |  $$ |$$ |            $$$$\ $$ |$$ |   $$ |  $$ |  $$$$\  $$$$ |]],
				[[ $$$$$$$$ |$$$$$$$  |$$ |            $$ $$\$$ |\$$\  $$  |  $$ |  $$\$$\$$ $$ |]],
				[[ $$  __$$ |$$  ____/ $$ |            $$ \$$$$ | \$$\$$  /   $$ |  $$ \$$$  $$ |]],
				[[ $$ |  $$ |$$ |      $$ |            $$ |\$$$ |  \$$$  /    $$ |  $$ |\$  /$$ |]],
				[[ $$ |  $$ |$$ |      $$$$$$$$\       $$ | \$$ |   \$  /   $$$$$$\ $$ | \_/ $$ |]],
				[[ \__|  \__|\__|      \________|      \__|  \__|    \_/    \______|\__|     \__|]],
				[[                                                                               ]],
			}

			require("alpha").setup(startify.config)
		end,
	},
}
