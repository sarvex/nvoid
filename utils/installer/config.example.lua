-- Ui
nvoid.colorscheme = "onedarker"
-- nvoid.statusline. ...

-- Log
nvoid.log.level = "warn"
-- nvoid.log. ...

-- Keys
nvoid.leader = "space"
nvoid.keys.normal_mode["<C-s>"] = ":w<cr>"
-- nvoid.builtin.which_key.mappings["h"] = { "<cmd>nohlsearch<CR>", " No Highlight" }
-- nvoid.builtin.which_key.mappings["z"] = {
--   name = " Zen",
--   z = { "<cmd>ZenMode<cr>", "ZenMode" },
--   t = { "<cmd>Twilight<cr>", "Twilight" },
-- }

-- Lsp
nvoid.lsp.diagnostics.virtual_text = true
nvoid.lsp.format_on_save = false
nvoid.lsp.document_highlight = true
-- nvoid.lsp. ...

-- Plugins
nvoid.builtin.notify.active = true
nvoid.builtin.nvimtree.setup.view.side = "left"
nvoid.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

nvoid.builtin.treesitter.ignore_install = { "haskell" }
nvoid.builtin.treesitter.highlight.enabled = true
-- Add Plugins
-- nvoid.plugins = {}
