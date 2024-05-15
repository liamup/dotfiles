return {
	{
		"rcarriga/nvim-notify",
		opts = function(_, opts)
			return require("astrocore").extend_tbl(opts, {
				stages = "static", -- 取消淡入淡出
				render = "compact",
				fps = 5,
				level = 1,
				timeout = 2000,
			})
		end,
	},
	{
		"folke/noice.nvim",
		opts = function(_, opts)
			opts.lsp.signature = {
				enabled = false,
			}
		end,
	},
}
