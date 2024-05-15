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
  { import = "astrocommunity.indent.mini-indentscope" },
  -- heirline
  { import = "astrocommunity.recipes.heirline-mode-text-statusline" },
  -- lsp
  { import = "astrocommunity.completion.cmp-cmdline" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" }, -- parameter prompt
  -- Debug
  { import = "astrocommunity.debugging.nvim-dap-virtual-text" },
  { import = "astrocommunity.debugging.persistent-breakpoints-nvim" },
  -- tools
  { import = "astrocommunity.motion.flash-nvim" }, -- easy motion
  { import = "astrocommunity.editing-support.multicursors-nvim" },
  { import = "astrocommunity.utility.noice-nvim" },
}
