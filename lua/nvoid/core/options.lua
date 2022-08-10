local opt = vim.opt
local g = vim.g
local options = require("nvoid.core.utils").load_config().options
opt.history = 100
opt.shiftwidth = 2
opt.synmaxcol = 240
opt.tabstop = 4
opt.pumheight = 10
opt.timeoutlen = 150
opt.completeopt = "menuone,noselect"
opt.updatetime = 300
opt.termguicolors = true
opt.splitbelow = true
opt.splitright = true
opt.laststatus = 3
opt.showtabline = 2
opt.statusline = "%!v:lua.require'nvoid.ui.statusline'.run()"
opt.tabline = "%!v:lua.require'nvoid.ui.bufferline'.run()"

opt.clipboard = options.clipboard
opt.cmdheight = options.cmdheight
opt.mouse = options.mouse
g.mapleader = options.mapleader
opt.wrap = options.wrap
opt.number = options.number
opt.relativenumber = options.relative_number
opt.numberwidth = options.number_width
opt.cursorline = options.cursor_line
opt.hidden = options.hidden
opt.expandtab = options.expand_tab
opt.ignorecase = options.ignore_case
opt.smartcase = options.smart_case
opt.smartindent = options.smart_indent
opt.swapfile = options.swap_file
opt.backup = options.backup
opt.showmode = options.show_mode

-- disable some builtin vim plugins
local disabled_built_ins = {
  "2html_plugin",
  "getscript",
  "getscriptPlugin",
  "gzip",
  "logipat",
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  -- "matchit",
  "tar",
  "tarPlugin",
  "rrhelper",
  "spellfile_plugin",
  "vimball",
  "vimballPlugin",
  "zip",
  "zipPlugin",
}

for _, plugin in pairs(disabled_built_ins) do
  g["loaded_" .. plugin] = 1
end
