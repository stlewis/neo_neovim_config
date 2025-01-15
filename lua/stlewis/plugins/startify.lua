return {
  "mhinz/vim-startify",
  config = function()
    vim.g.startify_lists = {
      { type = 'dir', header = { '   MRU ' .. vim.fn.getcwd() .. ':' }  },
      { type = 'files', header = { '   MRU' } },
      { type = 'sessions', header = { '   Sessions' } },
      { type = 'bookmarks', header = { '   Bookmarks' } },
      { type = 'commands', header = { '   Commands' } },
    }

    local has_eo = os.execute("command -v eomotd")

    if has_eo == 0 then
      vim.g.startify_custom_header = "startify#pad(split(system('eomotd'), '\n'))"
    end
  end,
}
 
