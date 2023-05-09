-- Neovim
-- =========================================

-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  pattern = "*.lua",
  timeout = 1000,
}

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

lvim.builtin.treesitter.auto_install = false

-- LSP
-- =========================================
lvim.format_on_save.pattern = { "*.cpp", "*.c", "*.md" }

-- keybindings
-- =========================================
require("user.keybindings").config()
-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Override Lunarvim defaults
-- =========================================
require("user.builtin").config()
