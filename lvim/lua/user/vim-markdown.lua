local M = {}

M.config = function()
  vim.cmd [[
    let g:vim_markdown_folding_disabled = 1
  ]]
end

return M
