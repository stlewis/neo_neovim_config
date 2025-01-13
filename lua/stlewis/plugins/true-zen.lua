return {
  "Pocco81/true-zen.nvim",
  config = function()
    require("true-zen").setup({
      modes = { 
        ataraxis = { 
          backdrop = 0.75 
        } 
      }
    })
  end
}
