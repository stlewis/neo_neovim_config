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

    g.ale_fixers = {
      javascript = { "eslint" },
      typescript = { "eslint" },
      typescriptreact = { "eslint" },
      ruby = { "rubocop" }
    }
  end,
}
