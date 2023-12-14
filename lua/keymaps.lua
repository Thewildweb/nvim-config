-- define leader
vim.g.mapleader = " "


-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Next and prev file
vim.keymap.set('n', '<space>bn', '<cmd>bnext<CR>')
vim.keymap.set('n', '<space>bp', '<cmd>bprev<CR>')

-- Toggle filetree
vim.keymap.set('n', '<leader>tr', '<cmd>NvimTreeToggle<CR>')

-- Black on current file
vim.keymap.set('n', '<space>f', '<cmd>w | !black % | w<CR><CR>')

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<space>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})


-- Stuff for Harpoon
vim.keymap.set('n', '<space>hd', '<cmd>lua require("harpoon.mark").add_file()<CR>')
vim.keymap.set('n', '<space>hv', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>')
vim.keymap.set('n', '<space>h1', '<cmd>lua require("harpoon.ui").nav_file(1)<CR>')
vim.keymap.set('n', '<space>h2', '<cmd>lua require("harpoon.ui").nav_file(2)<CR>')
vim.keymap.set('n', '<space>h3', '<cmd>lua require("harpoon.ui").nav_file(3)<CR>')
vim.keymap.set('n', '<space>h4', '<cmd>lua require("harpoon.ui").nav_file(4)<CR>')
vim.keymap.set('n', '<space>h5', '<cmd>lua require("harpoon.ui").nav_file(5)<CR>')
vim.keymap.set('n', '<space>hn', '<cmd>lua require("harpoon.ui").nav_next()<CR>')
vim.keymap.set('n', '<space>hp', '<cmd>lua require("harpoon.ui").nav_prev()<CR>')


vim.g.copilot_assume_mapped = true
