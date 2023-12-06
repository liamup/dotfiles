return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- mappings Enter to open fine-cmdline
    ["<CR>"] = { "<cmd>FineCmdline<CR>", desc = "fine cmdline" },

    -- Neoconf
    ["<leader>lg"] = { "<cmd>Neoconf<CR>", desc = "Select local/global neoconf config" },
    ["<leader>lc"] = { "<cmd>Neoconf show<CR>", desc = "Show neoconf merge config" },
    ["<leader>lp"] = { "<cmd>Neoconf lsp<CR>", desc = "Show neoconf merge lsp config" },
  },
}
