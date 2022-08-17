local M = {}

-- UI
M.ui = {
  theme = "onedark", -- "catppuccin" "classic-dark" "dracula" "gruvbox" "nord" "onedark" "solarized" "tokyodark" "uwu"
  transparency = false,
  statusline = "nvoid", -- "default" "evil" "minimal" "nvoid"
}

-- Options
M.options = {
  clipboard = "unnamedplus",
  cmdheight = 1,
  mouse = "a",
  mapleader = " ",
  wrap = false,
  number = true,
  relative_number = false,
  number_width = 6,
  cursor_line = true,
  hidden = true,
  expand_tab = true,
  ignore_case = true,
  smart_case = true,
  smart_indent = true,
  swap_file = false,
  backup = false,
  show_mode = false,
}

-- Add treesitter highliter
M.ts_add = {} -- "all"

-- Lsp Settings
M.lsp = {
  document_highlight = true,
  autoforamt = true,
}

-- Add new LSP server
M.lsp_add = {} -- "bashls"

-- Add Plugins
M.plugins = {
  --add = { "folke/zen-mode.nvim" }
}

-- Add new whichkey bind
M.whichkey_add = {
  -- ["z"] = { "<cmd>ZenMode<cr>", "Zen Mode" }
}

return M
