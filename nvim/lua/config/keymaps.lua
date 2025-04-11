vim.g.mapleader = ' '

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Disable arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')

map('n', '<C-j>', '10j')
map('n', '<C-k>', '10k')

-- Fast Fast Fast
map('n', '<leader>s', ':w<CR>')
map('n', '<leader>q', ':wq!<CR>')
map('n', '<S-q>', ':q!<CR>')


-- Disable search highlight
map('n', '<leader>cs', ':noh<CR>')

map('n', '<leader>sw', '/')
