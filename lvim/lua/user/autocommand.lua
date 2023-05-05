local M = {}

local create_aucmd = vim.api.nvim_create_autocmd

M.config = function()
  vim.cmd([[
    augroup _open_nvim_tree
      autocmd! * <buffer>
      autocmd SessionLoadPost * silent! lua require("nvim-tree").toggle(false, true)
    augroup end
  ]])
  create_aucmd("BufWinEnter", {
    group = "_lvim_user",
    pattern = "*.md",
    desc = "beautify markdown",
    callback = function()
      vim.cmd [[set syntax=markdown]]
      require("user.markdown_syn").set_syntax()
    end,
  })

  create_aucmd("TermOpen", {
    group = "_lvim_user",
    pattern = "term://*",
    command = "lua require('user.keybindings').set_terminal_keymaps()",
  })
  if lvim.builtin.metals.active then
    create_aucmd("Filetype", {
      group = "_lvim_user",
      pattern = { "scala", "sbt" },
      callback = require("user.metals").start,
    })
  end
  create_aucmd("FileType", {
    group = "_lvim_user",
    pattern = "toml",
    command = "lua require('cmp').setup.buffer { sources = { { name = 'crates' } } }",
  })
end

return M
