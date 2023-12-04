return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- mappings Enter to open fine-cmdline
    ["<CR>"] = {
      function() vim.api.nvim_command ":FineCmdline" end,
      desc = "fine cmdline",
    },
  },
}
