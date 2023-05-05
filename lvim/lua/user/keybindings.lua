local M = {}

M.config = function()
  lvim.keys.normal_mode["ma"] = "<cmd>Telescope vim_bookmarks current_file<cr>"
  lvim.keys.normal_mode["mA"] = "<cmd>Telescope vim_bookmarks all<cr>"
  lvim.builtin["terminal"].execs = {}
  lvim.keys.normal_mode["<A-1>"] = "<cmd>lua require('bufferline').go_to_buffer(1, true)<CR>"
  lvim.keys.normal_mode["<A-2>"] = "<cmd>lua require('bufferline').go_to_buffer(2, true)<CR>"
  lvim.keys.normal_mode["<A-3>"] = "<cmd>lua require('bufferline').go_to_buffer(3, true)<CR>"
  lvim.keys.normal_mode["<A-4>"] = "<cmd>lua require('bufferline').go_to_buffer(4, true)<CR>"
  lvim.keys.normal_mode["<A-5>"] = "<cmd>lua require('bufferline').go_to_buffer(5, true)<CR>"
  lvim.keys.normal_mode["<A-6>"] = "<cmd>lua require('bufferline').go_to_buffer(6, true)<CR>"
  lvim.keys.normal_mode["<A-7>"] = "<cmd>lua require('bufferline').go_to_buffer(7, true)<CR>"
  lvim.keys.normal_mode["<A-8>"] = "<cmd>lua require('bufferline').go_to_buffer(8, true)<CR>"
  lvim.keys.normal_mode["<A-9>"] = "<cmd>lua require('bufferline').go_to_buffer(9, true)<CR>"
  lvim.keys.normal_mode["<A-$>"] = "<cmd>lua require('bufferline').go_to_buffer(-1, true)<CR>"
  lvim.keys.normal_mode["<A-Up>"] = "<cmd>resize -2<CR>"
  lvim.keys.normal_mode["<A-Down>"] = "<cmd>resize +2<CR>"
  lvim.keys.normal_mode["<A-Left>"] = "<cmd>vertical resize +2<CR>"
  lvim.keys.normal_mode["<A-Right>"] = "<cmd>vertical resize -2<CR>"
end

return M
