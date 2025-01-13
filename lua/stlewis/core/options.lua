vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- Line numbers
opt.relativenumber = true
opt.number = true

-- Tabs & Indentation
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

-- Search Stuff
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.incsearch = true
opt.hlsearch = true

-- Appearance Stuff
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.showtabline = 0
opt.concealcursor = "n" -- Disable concealing in normal mode
opt.conceallevel = 3

-- Backspace tweaks
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Window Splitting
opt.splitright = true
opt.splitbelow = true

-- Mouse
opt.mouse:append("a")

-- File Management
opt.backup = false
opt.swapfile = false
opt.hidden = true
opt.undofile = true

-- Misc
opt.formatoptions:remove("o") -- Don't continue comments when hitting 'o' or 'O'
