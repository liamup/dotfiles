return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    return require("astronvim.utils").extend_tbl(opts, {
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
    })
  end,
}
