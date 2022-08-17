local M = {}

-- UI
M.ui = {
  hl_override = {},
  changed_themes = {},
  theme = "onedark", -- default theme
  transparency = false,
  statusline = {
    enable = true,
    style = "nvoid",
  },
}
-- OPT
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
  nvimtree_indent_markers = true,
}

-- Add Treesitter langs
M.ts_add = {
  "bash",
  "lua",
  "c",
  "cpp",
  "css",
  "json",
  "yaml",
  "python",
}

-- Lsp Settings
M.lsp = {
  document_highlight = true,
  autoforamt = false,
}

-- Add Lsp servers
M.lsp_add = {}

-- Plugins
M.plugins = {
  add = {},
  remove = {
    alpha = false,
    indent_blankline = false,
    null_ls = false,
    gitsigns = false,
    colorizer = false,
    toggleterm = false,
    nvimtree = false,
    telescope = false,
    which_key = false,
  },
}

-- Add new whichkey bind
M.whichkey_add = {}

return M
