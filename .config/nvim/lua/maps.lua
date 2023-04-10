-- [[maps.lua]]
local keymap = vim.api.nvim_set_keymap

-- insert one char on C-i or C-a
keymap('n', '<C-i>', 'i_<Esc>r', { noremap = true })
keymap('n', '<C-i>', 'i_<Esc>r', { noremap = true })

-- Don't copy the replaced text after pasting.
-- keymap("v", "p", '"_dP')

