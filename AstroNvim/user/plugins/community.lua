return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- colorscheme
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.rose-pine" },
  -- color
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  -- lsp
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" }, -- parameter prompt
  -- tools
  { import = "astrocommunity.motion.flash-nvim" }, -- easy motion
  { import = "astrocommunity.editing-support.todo-comments-nvim" }, -- TODO
}
