local core_plugins = {
  -- Plenary
  { "nvim-lua/plenary.nvim" },

  -- Packer
  { "wbthomason/packer.nvim" },

  -- Base16
  {
    "nvoid-lua/base16",
    branch = "nvoid-rolling",
    config = function()
      require("base16").load_theme()
    end,
  },
  {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig",
  },

  -- Term
  {
    "numToStr/FTerm.nvim",
    module = "FTerm",
    config = function()
      require("nvoid.plugins.config.fterm")
    end,
  },

  -- Icons
  {
    "kyazdani42/nvim-web-devicons",
    module = "nvim-web-devicons",
    config = function()
      require("nvoid.plugins.config.devions")
    end,
  },

  -- Indent Blankline
  {
    "lukas-reineke/indent-blankline.nvim",
    opt = true,
    after = "nvim-treesitter",
    config = function()
      require("nvoid.plugins.config.indent")
    end,
  },

  -- Colorizer
  {
    "norcalli/nvim-colorizer.lua",
    setup = function()
      require("nvoid.core.lazy_load").on_file_open("nvim-colorizer.lua")
    end,
    opt = true,
    config = function()
      require("nvoid.plugins.config.colorizer")
    end,
  },

  -- Tree Sitter
  {
    "nvim-treesitter/nvim-treesitter",
    module = "nvim-treesitter",
    setup = function()
      require("nvoid.core.lazy_load").on_file_open("nvim-treesitter")
    end,
    cmd = require("nvoid.core.lazy_load").treesitter_cmds,
    run = ":TSUpdate",
    config = function()
      require("nvoid.plugins.config.treesitter").setup()
    end,
  },

  -- Gitsigns
  {
    "lewis6991/gitsigns.nvim",
    disable = not nvoid.builtin.gitsigns.active,
    config = function()
      require("nvoid.plugins.config.gitsigns").setup()
    end,
    setup = function()
      require("nvoid.core.lazy_load").gitsigns()
    end,
  },

  -- Lsp, cmp and luadev
  {
    "williamboman/mason.nvim",
    config = function()
      require("nvoid.plugins.config.mason").setup()
    end,
  },
  { "williamboman/mason-lspconfig.nvim" },
  { "neovim/nvim-lspconfig" },
  { "jose-elias-alvarez/null-ls.nvim" },
  { "rafamadriz/friendly-snippets", module = { "cmp", "cmp_nvim_lsp" }, event = "InsertEnter" },
  {
    "folke/neodev.nvim",
    module = "neodev",
  },
  {
    "hrsh7th/nvim-cmp",
    after = "friendly-snippets",
    config = function()
      require("nvoid.plugins.config.cmp").setup()
    end,
  },

  {
    "L3MON4D3/LuaSnip",
    wants = "friendly-snippets",
    after = "nvim-cmp",
    cpnfig = function()
      require("nvoid.plugins.config.luasnip")
    end,
  },

  -- CMP Extensions
  { "saadparwaiz1/cmp_luasnip", after = "LuaSnip" },
  { "hrsh7th/cmp-nvim-lua", after = "cmp_luasnip" },
  { "hrsh7th/cmp-nvim-lsp", after = "cmp-nvim-lua" },
  { "hrsh7th/cmp-buffer", after = "cmp-nvim-lsp" },
  { "hrsh7th/cmp-path", after = "cmp-buffer" },

  -- Autopairs
  {
    "windwp/nvim-autopairs",
    after = "nvim-cmp",
    config = function()
      require("nvoid.plugins.config.autopairs").setup()
    end,
    disable = not nvoid.builtin.autopairs.active,
  },

  -- Alpha
  {
    "goolord/alpha-nvim",
    after = "base16",
    config = function()
      require("nvoid.plugins.config.alpha")
    end,
  },

  -- Comments
  {
    "numToStr/Comment.nvim",
    config = function()
      require("nvoid.plugins.config.comment")
    end,
  },

  -- NvimTree
  {
    "kyazdani42/nvim-tree.lua",
    disable = not nvoid.builtin.nvimtree.active,
    ft = "alpha",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    tag = "nightly",
    config = function()
      require("nvoid.plugins.config.nvimtree").setup()
    end,
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    config = function()
      require("nvoid.plugins.config.telescope").setup()
    end,
    disable = not nvoid.builtin.telescope.active,
  },

  -- Whichkey
  {
    "folke/which-key.nvim",
    module = "which-key",
    keys = "<leader>",
    config = function()
      require("nvoid.plugins.config.which-key").setup()
    end,
  },

  -- Notify
  {
    "rcarriga/nvim-notify",
    config = function()
      require("nvoid.plugins.config.notify").setup()
    end,
    requires = { "nvim-telescope/telescope.nvim" },
    disable = not nvoid.builtin.notify.active or not nvoid.builtin.telescope.active,
  },

}

return core_plugins
