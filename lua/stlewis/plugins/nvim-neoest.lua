-- Test Runners
vim.api.nvim_create_user_command("RunNearestSpec", function()
  vim.cmd("wa")
  require("neotest").run.run()
  require("neotest").output.open()
end, {})

vim.api.nvim_create_user_command("RunFileSpec", function()
  vim.cmd("wa")
  require("neotest").run.run(vim.fn.expand("%"))
  require("neotest").output.open()
end, {})

-- Keymaps
local keymap = vim.keymap

keymap.set("n", "<leader>ns", ":RunNearestSpec<CR>", { silent = true })
keymap.set("n", "<leader>as", ":RunFileSpec<CR>", { silent = true })

return {
  "nvim-neotest/neotest",
  lazy = true,
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
    "olimorris/neotest-rspec",
  },

  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-rspec")
      }
    })
  end,
}
