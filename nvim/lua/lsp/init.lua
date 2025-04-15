local M = {}

M.lsp = require('lsp.setup')
M.autocmds = require('lsp.autocmds')

-- diagnostics
M.lsp.setup_diagnostics()

--- autocmd
M.autocmds.setup_auto_cmds()

--- LSP Setups
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local tfcapabilites = vim.lsp.protocol.make_client_capabilities()
tfcapabilites.textDocument.completion.completionItem.snippetSupport = true

M.lsp.setup_lsp('terraform-ls', {
    cmd = { 'terraform-ls', 'serve' },
    filetypes = { 'tf', 'terraform' },
    root_markers = { '.terraform', '.git', '.tflint.hcl' },
    settings = {},
    capabilities = tfcapabilites
})

M.lsp.setup_lsp('tflint', {
    cmd = { 'tflint', '--langserver' },
    filetypes = { 'tf', 'terraform' },
    root_markers = { '.terraform', '.git', '.tflint.hcl' },
    settings = {},
    capabilities = tfcapabilites
})

M.lsp.setup_lsp('luals', {
    cmd = { 'lua-language-server' },
    capabilities = capabilities,
    filetypes = { 'lua' },
    root_markers = { '.luarc.json', '.luarc.jsonc' },
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
            },
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

M.lsp.setup_lsp('gopls', {
    cmd = { 'gopls' },
    filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
    root_markers = { 'go.mod', 'go.work' }
})
