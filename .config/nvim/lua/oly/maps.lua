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
keymap("n", "<Leader>e", ":Lex 20<CR>", opts)
keymap("n", "<Leader>t", "<C-w>v :terminal<CR> <S-a>", term_opts)
keymap("n", "<Leader>d", ":call delete(expand('%'))<CR>", opts)
keymap("n", "<Leader>co", ":set colorcolumn=100<CR>", opts)
keymap("n", "<Leader>cc", ":set colorcolumn=0<CR>", opts)

-- Move between tabs
keymap("n", "<Leader>n", ":tabnew<CR>", opts)
keymap("n", "<Leader>q", ":tabclose<CR>", opts)
keymap("n", "<Leader>1", "1gt", opts)
keymap("n", "<Leader>2", "2gt", opts)
keymap("n", "<Leader>3", "3gt", opts)
keymap("n", "<Leader>4", "4gt", opts)
keymap("n", "<Leader>5", "5gt", opts)
keymap("n", "<Leader>6", "6gt", opts)
keymap("n", "<Leader>7", "7gt", opts)
keymap("n", "<Leader>8", "8gt", opts)
keymap("n", "<Leader>9", "9gt", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- insert one char on C-i or C-a
keymap('n', '<C-i>', 'i_<Esc>r', opts)
keymap('n', '<C-a>', 'a_<Esc>r', { noremap = true })

-- Use Tab in normal mode to indent and unindentkeymap
keymap("n", "<Tab>", ">>", opts)
keymap("n", "<S-Tab>", "<<", opts)

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

-- Don't copy the replaced text after pasting
-- keymap("v", "p", '"_dP')

