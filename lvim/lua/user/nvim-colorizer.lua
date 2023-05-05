local M = {}

M.config = function()
  local status_ok, colorizer = pcall(require, "colorizer")
  if not status_ok then
    vim.notify("colorizer not found!")
    return
  end
  vim.notify("colorizer found!")
  colorizer.setup()
end

return M
