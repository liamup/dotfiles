---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        wrap = true,
        showbreak = "↪",
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    mappings = {
      n = {
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
      t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
      },
    },
  },
}
