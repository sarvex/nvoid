local icons = require("ui.icons").lsp
local config = require("nvoid.core.utils").load_config().lsp
local signs = {
  { name = "DiagnosticSignError", text = icons.error },
  { name = "DiagnosticSignWarn", text = icons.warn },
  { name = "DiagnosticSignHint", text = icons.hint },
  { name = "DiagnosticSignInfo", text = icons.info },
}
local borders = {
  { "┌", "Normal" },
  { "─", "Normal" },
  { "┐", "Normal" },
  { "│", "Normal" },
  { "┘", "Normal" },
  { "─", "Normal" },
  { "└", "Normal" },
  { "│", "Normal" },
}

for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

local opt = {
  virtual_text = config.virtual_text,
  signs = {
    active = signs,
  },
  update_in_insert = true,
  underline = true,
  severity_sort = true,
  float = {
    focusable = false,
    style = "minimal",
    border = borders,
    source = "always",
    header = "",
    prefix = "",
  },
}

vim.diagnostic.config(opt)

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = borders,
  width = 60,
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = borders,
  width = 60,
})

vim.fn.sign_define(
  "LspDiagnosticsSignError",
  { texthl = "LspDiagnosticsSignError", text = icons.error, numhl = "LspDiagnosticsSignError" }
)

vim.fn.sign_define(
  "LspDiagnosticsSignWarning",
  { texthl = "LspDiagnosticsSignWarning", text = icons.warn, numhl = "LspDiagnosticsSignWarning" }
)

vim.fn.sign_define(
  "LspDiagnosticsSignInformation",
  { texthl = "LspDiagnosticsSignInformation", text = icons.info, numhl = "LspDiagnosticsSignInformation" }
)

vim.fn.sign_define(
  "LspDiagnosticsSignHint",
  { texthl = "LspDiagnosticsSignHint", text = icons.hint, numhl = "LspDiagnosticsSignHint" }
)
