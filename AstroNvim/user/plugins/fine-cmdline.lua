return {
  {
    "vonheikemen/fine-cmdline.nvim",
    lazy = false,
    opts = {
      cmdline = {
        enable_keymaps = true,
        smart_history = true,
        prompt = "❯ ",
      },
      popup = {
        position = {
          row = "10%",
          col = "50%",
        },
        size = {
          width = "30%",
        },
        border = {
          style = "rounded",
          text = {
            top = " Command Line ",
            top_align = "center",
          },
        },
        relative = "editor",
        win_options = {
          winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
        },
      },
    },
  },
}
