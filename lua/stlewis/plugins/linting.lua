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
    -- Only show warnings for the line you're on
    g.ale_virtualtext_cursor = "current"
  end,
}
