local M = {}

M.config = function() 
  vim.o.timeoutlen = 250
  lvim.builtin.which_key.setup.window.border = "rounded" -- 设置圆角

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
  lvim.builtin.which_key.mappings["C"] = {
    name = "CMake",
    g = {"<cmd>CMake configure<CR>", "Configure"},
    t = {"<cmd>CMake select_target<CR>", "SelectTarget"},
    T = {"<cmd>CMake select_build_type<CR>", "SelectBuildType"},
    b = {"<cmd>CMake build<CR>", "BuildTarget"},
    a = {"<cmd>CMake build_all<CR>", "BuildAll"},
    r = {"<cmd>CMake build_and_run<CR>", "Run"},
    d = {"<cmd>CMake build_and_debug<CR>", "DebugTarget"},
    c = {"<cmd>CMake cancel<CR>", "Cancel"},
    s = {"<cmd>CMake set_target_args<CR>", "SetArg"},
  }
end

return M
