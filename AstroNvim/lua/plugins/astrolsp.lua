local utils = require "lspconfig/util"

---@type LazySpec
return {
  "AstroNvim/astrolsp",
  ---@type AstroLSPOpts
  opts = {
    -- customize language server configuration options passed to `lspconfig`
    ---@diagnostic disable: missing-fields
    config = {
      pyright = {
        root_dir = function(fname)
          local root_files = {
            "main.py",
            "setup.py",
            "setup.cfg",
            "requirements.txt",
            "pyproject.toml",
            "pyrightconfig.json",
          }
          return utils.find_git_ancestor(fname) or utils.root_pattern(unpack(root_files))(fname)
        end,
      },
    },
  },
}
