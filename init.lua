require("nvoid.core.autocmd")
require("nvoid.core.command")
require "nvoid.core.options"
require "nvoid.core.map"
pcall(require, "custom.nvoidrc")
require("nvoid.core.packer").load()
