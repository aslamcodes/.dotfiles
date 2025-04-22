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

-- Fast Fast Fast
map('n', '<leader>s', ':w<CR>')
map('n', '<leader>q', ':wq!<CR>')
map('n', '<S-q>', ':q!<CR>')
-- Scroll to 10
map("n", "<C-d", "5j", { noremap = true, silent = true })
map("n", "<C-u>", "5k", { noremap = true, silent = true })

-- Disable search highlight
map('n', '<leader>cs', ':noh<CR>')
map('n', '<leader>sw', '/')
