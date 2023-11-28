local Path = require "plenary.path"
local status_ok, session_manager = pcall(require, "session_manager")
if not status_ok then
  vim.notify "session_manager not found!"
  return
end
return {
  "Shatur/neovim-session-manager",
  lazy = false,
  config = function()
    require("session_manager").setup {
      sessions_dir = Path:new(vim.fn.stdpath "data", "sessions"), -- The directory where the session files will be saved.
      path_replacer = "__", -- The character to which the path separator will be replaced for session files.
      colon_replacer = "++", -- The character to which the colon symbol will be replaced for session files.
      autoload_mode = require("session_manager.config").AutoloadMode.CurrentDir, -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
      autosave_last_session = true, -- Automatically save last session on exit and on session switch.
      autosave_ignore_not_normal = true, -- Plugin will not save a session when no buffers are opened, or all of them aren't writable or listed.
      autosave_ignore_filetypes = { -- All buffers of these file types will be closed before the session is saved.
        "gitcommit",
      },
      autosave_only_in_session = false, -- Always autosaves session. If true, only autosaves after a session is active.
      max_path_length = 80, -- Shorten the display path if length exceeds this threshold. Use 0 if don't want to shorten the path at all.
    }
    -- Auto save session
    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      callback = function()
        for _, buf in ipairs(vim.api.nvim_list_bufs()) do
          -- Don't save while there's any 'nofile' buffer open.
          if vim.api.nvim_get_option_value("buftype", { buf = buf }) == "nofile" then return end
        end
        session_manager.save_current_session()
      end,
    })
    _G.saveWriteQuitFunction = function()
      -- Save the session
      vim.api.nvim_command ":SessionManager! save_current_session"
      -- wirte all buffer first
      vim.api.nvim_command ":wa"
      -- quit all buffer
      vim.api.nvim_command ":q"
    end
    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap("n", "ZZ", "<cmd>lua saveWriteQuitFunction()<cr>", opts)

    -- Auto open file explore
    local config_group = vim.api.nvim_create_augroup("MyConfigGroup", {}) -- A global group for all your config autocommands
    vim.api.nvim_create_autocmd({ "User" }, {
      pattern = "SessionLoadPost",
      group = config_group,
      callback = function()
        vim.defer_fn(function() vim.cmd.Neotree "focus" end, 5)
        vim.defer_fn(function() vim.cmd.wincmd "p" end, 5)
      end,
    })
  end,
}
