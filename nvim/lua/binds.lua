vim.g.mapleader= " "

-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('n', '<leader>pv', ':Ex<CR>')

map('i', '(', '()<left>', {silent=true})
map('i', '{', '{}<left>', {silent=true})
map('i', '[', '[]<left>', {silent=true})
map('i', '\'', '\'\'<left>', {silent=true})
map('i', '\"', '""<left>', {silent=true})
map('i', '<', '<><left>', {silent=true})

-- NERD tree
map('n', '<leader>nn', ':Fern /home/gbb -drawer<CR>', {silent=true})

-- ripgrep
map('n', '<leader>/', ':Rg ')
