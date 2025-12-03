return {
	"wakatime/vim-wakatime",
	cmd = { "WakaTimeAPIKey", "WakaTime" },
	event = "VeryLazy",
	config = function()
		-- WakaTime for Neovim (vim plugin)
		-- To enable, install the WakaTime CLI or sign in via the plugin:
		-- 1. Install WakaTime CLI: https://wakatime.com/
		-- 2. Set your API key in environment variable `WAKATIME_API_KEY` or run
		--    `:WakaTimeAPIKey` if the plugin prompts for it.
		-- The plugin works out of the box once the API key is available.
		vim.g.wakatime_cli = "wakatime"
	end,
}
