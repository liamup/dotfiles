local M = {}

M.config = function()
  -- auto wrap
  -- =========================================
  vim.cmd [[
    set wrap
  ]]

  vim.o.termguicolors = true
  -- which_key
  -- =========================================
  vim.o.timeoutlen = 250
  lvim.builtin.which_key.setup.window.border = "rounded" -- 设置圆角

  require("telescope").load_extension('live_grep_args')
  lvim.builtin.which_key.mappings["f"] = {
    "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_cursor({previewer = false, layout_strategy = 'center', layout_config = {width = 0.35, height = 0.5, prompt_position='top'}}))<cr>",
    "Find File"
  }
  lvim.builtin.which_key.mappings["F"] = {
    "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>",
    -- "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args(require('telescope.themes').get_ivy())<cr>",
    -- "<cmd>lua require('telescope.builtin').live_grep(require('telescope.themes').get_ivy())<cr>",
    "Find Text"
  }

  lvim.builtin.which_key.mappings["o"] = {
    "<cmd>SymbolsOutline<CR>", "Outline"
  }

  lvim.builtin.which_key.mappings["st"] = {
    "<cmd>TodoTelescope<CR>", "TODO"
  }
  lvim.builtin.which_key.mappings["sm"] = {
    "<cmd>Telescope vim_bookmarks all<CR>", "BookMarks"
  }
  lvim.builtin.which_key.mappings["ss"] = {
    "<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>",
    "Find Document Symbols",
  }
  lvim.builtin.which_key.mappings["sS"] = {
    "<cmd>lua require('telescope.builtin').lsp_dynamic_workspace_symbols()<cr>",
    "Find Symobls",
  }
  lvim.builtin.which_key.mappings["m"] = {
    name = "Format",
    t = { "<cmd>TableFormat<CR>", "TableFormat" }
  }
  lvim.builtin.which_key.mappings["r"] = {
    name = "Replace",
    f = { "<cmd>lua require('spectre').open_file_search()<CR>", "Replace File" },
    p = { "<cmd>lua require('spectre').open()<CR>", "Replace Project" },
    s = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Search" },
  }

  require("user.keybindings").config()
  -- Telescope
  -- =========================================
  lvim.builtin.telescope.theme = "center"
  lvim.builtin.telescope.defaults.layout_strategy = "horizontal"
  lvim.builtin.telescope.defaults.layout_config = {
    prompt_position = "bottom",
  }

  -- Bufferline
  -- =========================================
  lvim.builtin.bufferline.options.numbers = "ordinal"

  -- LuaLine
  -- =========================================
  lvim.builtin.lualine.options = require("user.utils").lualine.options
  lvim.builtin.lualine.sections = require("user.utils").lualine.sections
  lvim.builtin.lualine.inactive_sections = require("user.utils").lualine.inactive_sections
  lvim.builtin.lualine.tabline = {}
  lvim.builtin.lualine.extensions = {}
end

return M
