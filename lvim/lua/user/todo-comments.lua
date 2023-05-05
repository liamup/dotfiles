local M = {}

M.config = function()
  local status_ok, todo_comments = pcall(require, "todo-comments")
  if not status_ok then
    vim.notify("todo-comments not found!")
    return
  end

  todo_comments.setup(
    {
      keywords = {
        -- alt ： 别名
        FIX = {
          icon = " ",
          color = "#DC2626",
          alt = { "FIXME", "BUG", "FIXIT", "ISSUE", "!" }
        },
        TODO = { icon = " ", color = "#2563EB" },
        HACK = { icon = " ", color = "#7C3AED" },
        WARN = { icon = " ", color = "#FBBF24", alt = { "WARNING", "XXX" } },
        PERF = { icon = " ", color = "#FC9868", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = " ", color = "#10B981", alt = { "INFO" } }
      },
      telescope = {
        layout_config = {
          prompt_position = "bottom",
          horizontal = {
            width_padding = 0.1,
            height_padding = 0.1,
            preview_width = 0.6,
          },
          vertical = {
            width_padding = 0.05,
            height_padding = 1,
            preview_height = 0.5,
          },

        },
        theme = "center",
      },
      -- telescope = require("utils").telescope_center
    }
  )
end

return M
