local present, lsp_installer = pcall(require, "nvim-lsp-installer")
local servers = require("nvoid.core.utils").load_config().lsp_add

if not present then
  return
end

local options = {
  ensure_installed = servers,
  automatic_installation = true,
  ui = {
    icons = {
      server_installed = " ",
      server_pending = " ",
      server_uninstalled = " ﮊ",
    },
    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      check_server_version = "c",
      update_all_servers = "U",
      check_outdated_servers = "C",
      uninstall_server = "X",
    },
  },
  max_concurrent_installers = 20,
}

lsp_installer.setup(options)


-- local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
-- if not lspconfig_status_ok then
  -- return
-- end

-- local opts = {}

-- for _, server in pairs(servers) do
  -- opts = {
    -- on_attach = require("nvoid.plugins.config.lsp.handlers").on_attach,
    -- capabilities = require("nvoid.plugins.config.lsp.handlers").capabilities,
  -- }

  -- if server == "sumneko_lua" then
    -- local sumneko_opts = require "nvoid.plugins.config.lsp.settengs.sumneko_lua"
    -- opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  -- end

  -- lspconfig[server].setup(opts)
-- end
