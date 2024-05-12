return {
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            vim.cmd("TSUpdate")
        end
    },
    "nvim-treesitter/nvim-treesitter",
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        after = "nvim-treesitter",
        requires = "nvim-treesitter/nvim-treesitter",
    },
}
