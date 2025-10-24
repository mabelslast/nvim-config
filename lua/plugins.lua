return {
  -- Theme
  { "folke/tokyonight.nvim", lazy = false, priority = 1000 },

  -- File tree
  { 
	  "nvim-tree/nvim-tree.lua", 
	  dependencies = "nvim-tree/nvim-web-devicons",
	  config = function()
		  require("plugin_config.nvim-tree")
	  end,
  },

  -- Telescope (fuzzy finder)
  { "nvim-telescope/telescope.nvim", dependencies = "nvim-lua/plenary.nvim" },

  -- Treesitter (syntax highlighting)
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- LSP
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
	    require("plugin_config.lsp")
    end,
  },

  -- Autocomplete
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
  },

  -- Status line
  { "nvim-lualine/lualine.nvim", dependencies = "nvim-tree/nvim-web-devicons" },
}
