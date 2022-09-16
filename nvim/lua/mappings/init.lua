local keymap = vim.keymap

-- Do no yank with x
keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Close current window
keymap.set('n', 'qq', ':q <Return>')
keymap.set('n', 'QQ', ':q! <Return>')

-- Save  
keymap.set('n','<C-s>', ':w <Return>')

-- Undo things
keymap.set('n','<C-z>', ':u <Return>')

-- Add new line above and behind 
keymap.set('n','<C-j>', 'ola')
keymap.set('n','<C-k>', 'o <Esc>')

-- New tab
keymap.set('n', 'te', ':tabedit<Return>', { silent = true })
keymap.set('n', '<Tab>', ':tabNext<Return>')
keymap.set('n', 'td', ':tabclose<Return>')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w>>')
keymap.set('n', '<C-w><right>', '<C-w><')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

keymap.set('n', 'ff', ':Telescope find_files<Return>')
-- Telescope
keymap.set('n', 'fg', ':Telescope live_grep<Return>')
keymap.set('n', 'fb', ':Telescope buffers<Return>')

-- Explorer
keymap.set('n', '<C-b>', ':NERDTreeToggle<Return>')
keymap.set('n', 'nb', ':bNext<Return>') 

keymap.set('n', '<C-e>', ':Emmet ')

-- Move Selected line
keymap.set('x', 'J', ":move '>+1<CR>gv-gv")
keymap.set('x', 'K', ":move '<-2<CR>gv-gv")

-- Select and change all ocurrences
keymap.set('x', '<S-s>', '#<Return>')
keymap.set('n', '<S-s>', ':%s//')

