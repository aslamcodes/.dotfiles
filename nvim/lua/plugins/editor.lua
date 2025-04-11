return {
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        lazy = false,
        config = function()
            local function myLualineTheme()
                local colors = {
                    darkgray = "#16161d",
                    gray = "#727169",
                    innerbg = nil,
                    outerbg = "#16161D",
                    normal = "#7e9cd8",
                    insert = "#98bb6c",
                    visual = "#ffa066",
                    replace = "#e46876",
                    command = "#e6c384",
                }
                return {
                    inactive = {
                        a = { fg = colors.gray, bg = colors.outerbg, gui = "bold" },
                        b = { fg = colors.gray, bg = colors.outerbg },
                        c = { fg = colors.gray, bg = colors.innerbg },
                    },
                    visual = {
                        a = { fg = colors.darkgray, bg = colors.visual, gui = "bold" },
                        b = { fg = colors.gray, bg = colors.outerbg },
                        c = { fg = colors.gray, bg = colors.innerbg },
                    },
                    replace = {
                        a = { fg = colors.darkgray, bg = colors.replace, gui = "bold" },
                        b = { fg = colors.gray, bg = colors.outerbg },
                        c = { fg = colors.gray, bg = colors.innerbg },
                    },
                    normal = {
                        a = { fg = colors.darkgray, bg = colors.normal, gui = "bold" },
                        b = { fg = colors.gray, bg = colors.outerbg },
                        c = { fg = colors.gray, bg = colors.innerbg },
                    },
                    insert = {
                        a = { fg = colors.darkgray, bg = colors.insert, gui = "bold" },
                        b = { fg = colors.gray, bg = colors.outerbg },
                        c = { fg = colors.gray, bg = colors.innerbg },
                    },
                    command = {
                        a = { fg = colors.darkgray, bg = colors.command, gui = "bold" },
                        b = { fg = colors.gray, bg = colors.outerbg },
                        c = { fg = colors.gray, bg = colors.innerbg },
                    },
                }
            end
            require('lualine').setup({
                options = {
                    icons_enabled = true,
                    theme = myLualineTheme,
                }
            })
        end
    },
    {
        'nvim-tree/nvim-tree.lua',
        name = 'nvim-tree',
        keys = {
            { "<leader>e", ":NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
        },
        dependencies = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function()
            require('nvim-tree').setup({
                actions = {
                    open_file = {
                        quit_on_open = true
                    }
                }
            })
        end
    },
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
        },
        config = function()
            local cmp = require("cmp")

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<C-Space>'] = cmp.mapping.complete(),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<C-y>'] = cmp.mapping.confirm { select = true },
                }),
                sources = cmp.config.sources(
                    {
                        { name = 'nvim_lsp' },
                        { name = 'luasnip' },
                    },
                    {
                        { name = 'buffer' },
                    })
            })
        end,
    }
}
