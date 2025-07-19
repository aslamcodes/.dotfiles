return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope", -- Load only when `:Telescope` is used
    keys = {           -- Load on key press
        { "<leader>ff", function() require("telescope.builtin").find_files({ hidden = true }) end,                                                 desc = "Find Files" },
        { "<leader>fr", function() require("telescope.builtin").resume({ hidden = true }) end,                                                     desc = "Resume Search" },
        { "<leader>fg", function() require("telescope.builtin").live_grep() end,                                                                   desc = "Live Grep" },
        { "<leader>fb", function() require("telescope.builtin").buffers() end,                                                                     desc = "Find Buffers" },
        { "<leader>fh", function() require("telescope.builtin").help_tags() end,                                                                   desc = "Help Tags" },
        { "<leader>fw", function() require("telescope.builtin").grep_string { search = vim.fn.expand("<cword>") } end,                             desc = "Grep current word" },
        { "<leader>sw", function() require("telescope.builtin").current_buffer_fuzzy_find { search = vim.fn.expand("<cword>"), fuzzy = true } end, desc = "Grep current word" },
    },
    config = function()
        require("telescope").setup({})
    end,
}
