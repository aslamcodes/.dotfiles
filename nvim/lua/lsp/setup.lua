local M = {}

M.setup_diagnostics = function()
    vim.diagnostic.config({
        virtual_text = {
            prefix = "●",
        },
        severity_sort = true,
        signs = {
            text = {
                [vim.diagnostic.severity.ERROR] = "",
                [vim.diagnostic.severity.WARN] = "",
                [vim.diagnostic.severity.INFO] = "",
                [vim.diagnostic.severity.HINT] = "",
            },
        },
    })
end

M.setup_lsp = function (name, config)
    vim.lsp.config[name] = config
    vim.lsp.enable(name)
end

return M
