local config = require("nvoid.core.utils").load_config()
local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
  return
end

local options = {
  ensure_installed = config.ts_add,
  highlight = {
    enable = true,
    use_languagetree = true,
  },

  matchup = {
    enable = true,
  },
  indent = { enable = true },
}

treesitter.setup(options)
