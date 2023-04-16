-- [[maps.lua]]
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- NORMAL --
-- LEADER --
keymap("n", "<Leader>h", ":noh<CR>", opts)
keymap("n", "<Leader>e", ":Lex 20<CR>", opts)
keyamp("n", "<Leader>t", "<C-w>v :terminal<CR> <S-a>", term_opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- insert one char on C-i or C-a
keymap('n', '<C-i>', 'i_<Esc>r', { noremap = true })
keymap('n', '<C-i>', 'i_<Esc>r', { noremap = true })

-- INSERT --
-- Press jk fast to exit insert mode 
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- VISUAL --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- keeps pasted data in buffer
keymap("v", "p", '"_dP', opts)

-- Don't copy the replaced text after pasting.
-- keymap("v", "p", '"_dP')

