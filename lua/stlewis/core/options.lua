vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- Line numbers
opt.relativenumber = true
opt.number = true

-- Tabs & Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

-- Search Stuff
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true

-- Appearance Stuff
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- Backspace tweaks
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Window Splitting
opt.splitright = true
opt.splitbelow = true
