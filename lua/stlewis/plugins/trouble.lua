return {
  "folke/trouble.nvim",
  cmd = "Trouble",
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    {"<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "Open/close trouble list"},
    {"<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Open/close trouble list"},
    {"<leader>xq", "<cmd>Trouble quickfix toggle<CR>", desc = "Open/close trouble list"},
  },
}

