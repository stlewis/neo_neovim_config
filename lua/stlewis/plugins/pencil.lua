return {
  "preservim/vim-pencil",
  ft = { "markdown", "text" },
  lazy = true,
  init = function()
    vim.g["pencil#wrapModeDefault"] = "soft"

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "markdown", "text" },
      callback = function()
        vim.cmd("PencilSoft")
        vim.cmd("setlocal spell")
        vim.cmd("setlocal nocursorline")
        require("cmp").setup.buffer({ enabled = false })
      end,
    })  
  end,
}
