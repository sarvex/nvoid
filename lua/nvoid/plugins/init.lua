local present, nvoid_packer = pcall(require, "nvoid.core.packerInit")

if not present then
  return false
end

local packer = nvoid_packer.packer
local use = packer.use

local ok, user_plugins = pcall(require, "custom.nvoidrc")
if not ok then
  user_plugins = { add = {} }
end

if not vim.tbl_islist(user_plugins.plugins_add) then
  user_plugins.plugins_add = {}
end

return packer.startup(function()
  -- Packer
  use {
    "wbthomason/packer.nvim",
    event = "VimEnter",
  }

  -- Plenary, Popup
  use { "nvim-lua/plenary.nvim" }
  use { "nvim-lua/popup.nvim" }

  -- colorschemes
  use {
    "nvoid-lua/base16",
    config = function()
      require("base16").init()
    end,
  }

  -- Icons
  use { "kyazdani42/nvim-web-devicons" }

  -- LuaLine
  use {
    "nvim-lualine/lualine.nvim",
    config = function()
      require "nvoid.plugins.config.lualine"
    end,
  }

  -- Bufferline
  use {
    "akinsho/bufferline.nvim",
    config = function()
      require "nvoid.plugins.config.bufferline"
    end,
    branch = "main",
    event = "BufWinEnter",
  }

  -- Indent Line
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require "nvoid.plugins.config.indentline"
    end,
  }

  -- Git Sign
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require "nvoid.plugins.config.gitsigns"
    end,
    event = "BufRead",
  }

  -- Tree Sitter
  use {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require "nvoid.plugins.config.treesitter"
    end,
  }

  -- LSP Install
  use { "williamboman/nvim-lsp-installer" }

  -- LSP
  use {
    "neovim/nvim-lspconfig",
    config = function()
      require "nvoid.plugins.config.lsp"
    end,
  }

  -- Null-ls
  use { "jose-elias-alvarez/null-ls.nvim" }

  -- CMP
  use {
    "hrsh7th/nvim-cmp",
    config = function()
      require "nvoid.plugins.config.cmp"
    end,
  }

  -- Snippets
  use { "rafamadriz/friendly-snippets" }
  use { "L3MON4D3/LuaSnip" }

  -- CMP Extensions
  use { "saadparwaiz1/cmp_luasnip" }
  use { "hrsh7th/cmp-nvim-lua" }
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-path" }

  -- Auto Pairs
  use {
    "windwp/nvim-autopairs",
    config = function()
      require "nvoid.plugins.config.autopairs"
    end,
  }

  -- Comment
  use {
    "numToStr/Comment.nvim",
    config = function()
      require "nvoid.plugins.config.commented"
    end,
  }

  -- Nvim Tree
  use {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require "nvoid.plugins.config.nvimtree"
    end,
  }

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    config = function()
      require "nvoid.plugins.config.telescope"
    end,
  }

  -- Telescope Extensions
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    event = "BufWinEnter",
  }
  use { "nvim-telescope/telescope-media-files.nvim" }

  -- Alpha
  use {
    "goolord/alpha-nvim",
    config = function()
      require "nvoid.plugins.config.alpha"
    end,
  }

  -- Term
  use {
    "akinsho/toggleterm.nvim",
    config = function()
      require "nvoid.plugins.config.term"
    end,
    event = "BufWinEnter",
  }

  -- Which Key
  use {
    "folke/which-key.nvim",
    config = function()
      require "nvoid.plugins.config.which-key"
    end,
    event = "BufWinEnter",
  }

  -- Trouble
  use {
    "folke/trouble.nvim",
    config = function()
      require "nvoid.plugins.config.trouble"
    end,
  }

  -- Vim Matchup
  use {
    "andymass/vim-matchup",
    event = "BufWinEnter",
  }

  -- Notify
  use {
    "rcarriga/nvim-notify",
    config = function()
      require("nvoid.plugins.config.notify").notify()
    end,
  }

  if user_plugins.plugins_add and not vim.tbl_isempty(user_plugins.plugins_add) then
    for _, plugin in pairs(user_plugins.plugins_add) do
      use(plugin)
    end
  end

  if nvoid_packer.first_install then
    packer.sync()
  end
end)
