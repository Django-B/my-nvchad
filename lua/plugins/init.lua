return {
  {
    "Pocco81/auto-save.nvim",
    lazy = false,
    config = function ()
      require("auto-save").setup {}
    end
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier",
        "pyright",
  		},
  	},
    keys = {
      {
        "<leader>fj",
        function ()
          require('hop').hint_words()
        end,
        mode = { 'n', 'x', 'o' }
      }
    }
  },
  {
    'smoka7/hop.nvim',
    version = "*",
    opts = {
      multi_windows = true,
      keys = 'etovxqpdygfblzhckisuran',
      uppercase = true,
    }
  },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
