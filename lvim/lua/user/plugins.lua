local M = {}

local opts = { noremap = true, silent = true }

M.config = function()
  lvim.plugins = {
    {
      "phaazon/hop.nvim",
      event = "BufRead",
      config = function()
        require("user.hop").config()
        vim.api.nvim_set_keymap("n", "s", ":HopChar1<cr>", { silent = true })
        vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
      end,
    },
    {
      "Shatur/neovim-session-manager",
      config = function()
        require("user.neovim-session-manager").config()
        vim.api.nvim_set_keymap("n", "ZZ", ":lua require('user.utils.utils').SaveAndExit()<cr>", opts)
      end,
    },
    {
      "simrat39/symbols-outline.nvim",
      config = function()
        require('user.symbols-outline').config()
        -- https://snippet-generator.app/
      end
    },
    {
      "folke/todo-comments.nvim",
      event = "BufRead",
      config = function()
        require("user.todo-comments").config()
      end,
    },
    {
      "norcalli/nvim-colorizer.lua",
      config = function()
        require("user.nvim-colorizer").config()
      end,
    },
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
    },
    {
      "MattesGroeger/vim-bookmarks",
    },
    {
      "tom-anders/telescope-vim-bookmarks.nvim",
      config = function()
        require("telescope").load_extension('vim_bookmarks')
      end
    },
    {
      "nvim-telescope/telescope-ui-select.nvim",
    },
    {
      "iamcco/markdown-preview.nvim",
      build = "cd app && npm install",
      ft = "markdown",
      config = function()
        vim.g.mkdp_auto_start = 1
      end,
    },
    {
      "godlygeek/tabular",
    },
    {
      "preservim/vim-markdown",
      config = function()
        require("user.vim-markdown").config()
      end
    },
    {
      "mzlogin/vim-markdown-toc",
    },
    {
      "ravenxrz/vim-local-history",
      config = function()
        require("user.vim-local-history").config()
      end
    },
    {
      "windwp/nvim-spectre"
    },
    {
      "ravenxrz/neovim-cmake",
      config = function()
        require("user.neovim-cmake").config()
      end
    },
    {
        "mrjones2014/nvim-ts-rainbow",
    },
    {
        "ray-x/lsp_signature.nvim",
        event = "BufRead",
        opts = {
            hint_enable = false,
            bind = true,
        },
        config = function(_, opts) require'lsp_signature'.setup(opts) end,
    },
    -- colorscheme
    -- https://vimcolorschemes.com/top
    {
        "joshdick/onedark.vim"
    },
    {
        "sainnhe/sonokai",
        config = function()
          vim.cmd([[
            let g:sonokai_style = "atlantis"
          ]])
        end
    },
    {
        "rmehri01/onenord.nvim"
    },
    {
        "EdenEast/nightfox.nvim"
    },
    {
        "shaunsingh/nord.nvim"
    },
    {
        "folke/tokyonight.nvim"
    },
    {
        "catppuccin/nvim"
    },
        {
            "rose-pine/neovim"
        }
  }
end

return M
