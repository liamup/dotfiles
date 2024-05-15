return {
  "folke/which-key.nvim",
  opts = function(_, opts)
    return require("astrocore").extend_tbl(opts, {
      window = {
        border = "single", -- none, single, double, shadow
      },
    })
  end,
}
