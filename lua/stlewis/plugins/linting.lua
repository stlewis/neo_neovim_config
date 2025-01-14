return {
  "dense-analysis/ale",
  config = function()
    local g = vim.g

    g.ale_linters = {
      javascript = { "eslint" },
      typescript = { "eslint" },
      typescriptreact = { "eslint" },
      ruby = { "rubocop", "ruby" }
    }
  end,
}
