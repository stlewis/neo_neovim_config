return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup(
      {
        ui = {
          icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = ""
          }
        }  -- your mason setup
      }
    )

    mason_lspconfig.setup({
      ensure_installed = {
        "eslint",
        "ts_ls",
        "html",
        "graphql",
        "ruby_lsp",
        "rubocop",
        "jsonls",
        "cssls",
        "rust_analyzer",
      }
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier",
        "rubocop",
        "eslint_d",
        "trivy"
      }
    })
  end,
}
