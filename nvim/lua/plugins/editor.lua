return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('lualine').setup()
        end
    },
    {
        "EdenEast/nightfox.nvim",
        config = function()
            vim.cmd("colorscheme nightfox")
        end

    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            scope = { enabled = true },
        },
    },
    {
        "kevinhwang91/nvim-hlslens",
        config = function()
            require('hlslens').setup()
        end
    },
    {
        "petertriho/nvim-scrollbar",
        dependencies = { 'lewis6991/gitsigns.nvim', 'kevinhwang91/nvim-hlslens' },
        config = function()
            require('scrollbar').setup({
                handlers = {
                    cursor = false,
                    diagnostic = true,
                    gitsigns = true,
                    search = true,
                },
                handle = {
                    text = " ",
                    blend = 30,                 -- Integer between 0 and 100. 0 for fully opaque and 100 to full transparent. Defaults to 30.
                    color = "#5c6370",
                    color_nr = nil,             -- cterm
                    highlight = "CursorColumn",
                    hide_if_all_visible = true, -- Hides handle if all lines are visible
                },
            })
        end
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
        ft = "markdown",
        opts = {},
    },
    {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup(
                {
                    current_line_blame = true,
                })
        end
    },
    {
        'nvim-tree/nvim-tree.lua',
        name = 'nvim-tree',
        keys = {
            { "<leader>e", ":NvimTreeToggle<CR>", desc = "Toggle NvimTree", { silent = true } },
        },
        dependencies = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function()
            require('nvim-tree').setup({
                update_focused_file = {
                    enable = true,
                },
                actions = {
                    open_file = {
                        quit_on_open = true
                    }
                }
            })
        end
    },
    {
        {
            "hrsh7th/nvim-cmp",
            event = "InsertEnter",
            dependencies = {
                "L3MON4D3/LuaSnip",
                "saadparwaiz1/cmp_luasnip",
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
            },
            config = function()
                local cmp = require("cmp")
                local luasnip = require("luasnip")

                cmp.setup({
                    snippet = {
                        expand = function(args)
                            luasnip.lsp_expand(args.body)
                        end,
                    },
                    window = {
                        completion = cmp.config.window.bordered(),
                        documentation = cmp.config.window.bordered(),
                    },
                    mapping = cmp.mapping.preset.insert({
                        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                        ["<C-f>"] = cmp.mapping.scroll_docs(4),
                        ["<C-Space>"] = cmp.mapping.complete(),
                        ["<C-e>"] = cmp.mapping.abort(),
                        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
                    }),
                    sources = cmp.config.sources({
                        { name = "nvim_lsp", priority = 1000 },
                        { name = "path",     priority = 750 },
                        { name = "luasnip",  priority = 700 },
                    }, {
                        { name = "buffer", priority = 500 },
                    }),
                })

                -- Optional: enable path completion in command line mode
                cmp.setup.cmdline(":", {
                    mapping = cmp.mapping.preset.cmdline(),
                    sources = {
                        { name = "path" }
                    },
                })
            end,
        }
    }
}
