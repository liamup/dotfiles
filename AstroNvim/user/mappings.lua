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

    -- Visual Block Mode
    ["<leader>v"] = { "<C-v>", desc = "Visual Block Mode" },

    -- Multi Cursors
    ["<leader>M"] = { name = "MultiCursors" },
    ["<leader>Mw"] = { "<cmd>MCstart<CR>", desc = "Select Word and Into" },
    ["<leader>Mv"] = { "<cmd>MCvisual<CR>", desc = "Select Last visual and Into" },
    ["<leader>Mp"] = { "<cmd>MCpattern<CR>", desc = "Pattern and Into" },
    ["<leader>MP"] = { "<cmd>MCvisualPattern<CR>", desc = "Pattern in Last Visual Mode" },
    ["<leader>Mc"] = { "<cmd>MCunderCursor<CR>", desc = "Select Cursor Char and Into" },
    ["<leader>MC"] = { "<cmd>MCclear<CR>", desc = "Clear all Select" },
  },
}
