vim.api.nvim_create_user_command("BD", "Bwipeout", {})

return {
  "famiu/bufdelete.nvim", -- Close buffers without closing windows
  configure = function()
  end,
}
