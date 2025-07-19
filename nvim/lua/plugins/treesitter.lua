return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "lua", "go", "python", "javascript", "json", "yaml", "rust", "terraform" }, -- Add languages
            highlight = { enable = true },
            incremental_selection = { enable = true },
        })
    end,
}
