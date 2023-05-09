local M = {}

M.config = function()
  local status_ok, telescope = pcall(require, "telescope")
  if not status_ok then
    vim.notify("telescope not found!")
    return
  end

  lvim.builtin.telescope.theme = "center"
  lvim.builtin.telescope.defaults.layout_strategy = "horizontal"
  lvim.builtin.telescope.defaults.layout_config = {
    prompt_position = "bottom",
  }

  telescope.load_extension('live_grep_args')
  telescope.load_extension('ui-select')

  -- TODO: 窗口比较大,设置之后不变小
	telescope.setup({

    extensions = {
      ["ui-select"] = {
        -- require('telescope.themes').get_ivy({previewer = false, layout_strategy = 'center', layout_config = {width = 0.35, height = 0.5, prompt_position='top'}}),
        require("telescope.themes").get_dropdown({
        }),
      },
    }
  })
end

return M
