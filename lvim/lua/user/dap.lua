local M = {}

M.config = function()
  local status_ok, dap = pcall(require, "dap")
  if not status_ok then
    return
  end

  local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")
  local path = vim.fn.glob(mason_path .. "packages/codelldb/extension/")
      or vim.fn.expand "~/" .. ".vscode/extensions/vadimcn.vscode-lldb-1.8.1/"
  local lldb_cmd = path .. "adapter/codelldb"

  dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
      -- CHANGE THIS to your path!
      command = lldb_cmd,
      args = { "--port", "${port}" },

      -- On windows you may have to uncomment this:
      -- detached = false,
    },
  }

  dap.configurations.cpp = {
    {
      name = "Launch file",
      type = "codelldb",
      request = "launch",
      program = function()
        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
      end,
      cwd = "${workspaceFolder}",
      stopOnEntry = true,
      sourceMapping = true,
    },
  }
  dap.configurations.c = dap.configurations.cpp
end

return M
