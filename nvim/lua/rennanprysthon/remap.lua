local keymap = vim.keymap
vim.g.mapleader = " "

-- Select all
keymap.set("n", "<C-a>", 'gg<S-v>G')

-- Tabs
keymap.set("n", "te", ':tabedit<Return>')
keymap.set("n", "td", ':tabclose<Return>')
keymap.set("n", "<tab>", ':tabnext<Return>')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Delete word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Close windows
keymap.set('n', 'qq', ':q!<Return>')
keymap.set('n', '<C-s>', ':w!<Return>')

-- Move lines
keymap.set('n', '<S-j>', ':m .+2<CR>')
keymap.set('n', '<S-k>', ':m .-1<CR>')
keymap.set('v', '<S-j>', ':m \'>+2<CR>gv')
keymap.set('v', '<S-k>', ':m -1<CR>gv')
