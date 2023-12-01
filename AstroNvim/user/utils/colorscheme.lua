local M = {}

local themes = {
  "catppuccin",
  "tokyonight-night",
  "astrotheme",
  "rose-pine-main",
}

math.randomseed(os.time())
M.theme = themes[math.random(#themes)]
M.theme = "tokyonight-night"

return M
