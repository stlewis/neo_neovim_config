vim.g.mapleader = " "

local keymap = vim.keymap

-- Better Window Navigation
keymap.set('n', '<C-h>', '<C-w>h', {})
keymap.set('n', '<C-j>', '<C-w>j', {})
keymap.set('n', '<C-k>', '<C-w>k', {})
keymap.set('n', '<C-l>', '<C-w>l', {})

-- Arrow key remapping
keymap.set('n', '<Right>', [[:vertical resize +5<CR>]], {})
keymap.set('n', '<Left>', [[:vertical resize -5<CR>]], {})
keymap.set('n', '<Down>', [[:resize +5<CR>]], {})
keymap.set('n', '<Up>', [[:resize -5<CR>]], {})

-- Buffer Navigation
keymap.set('n', '<Tab>', [[:bnext<CR>]], {})
keymap.set('n', '<S-tab>', [[:bprev<CR>]], {})

-- Window Management
keymap.set('n', "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) 
keymap.set('n', "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) 
keymap.set('n', "<leader>se", "<C-w>=", { desc = "Equalize split size" }) 
keymap.set('n', "<leader>sx", "<cmd>close<CR>", { desc = "Close split" }) 

-- Minor Tweaks
keymap.set('n', ';', ':', {}) -- When typing ; in normal mode, you probably meant to type a colon
keymap.set('n', 'q:', ':q', {noremap = true}) -- Stop window from popping up on stupid typo
keymap.set('v', 'p', '"_dP', {}) -- Don't replace copy buffer with pasted over contents

-- Searching
keymap.set('n', '/<CR>', ':let @/=""<CR>', {noremap = true}) -- Clear search highlight

-- Continuous block tabbing
keymap.set('v', '>', '>gv', {})
keymap.set('v', '<', '<gv', {})
