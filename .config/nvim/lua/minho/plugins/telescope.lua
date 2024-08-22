-- telescope.nvim
-- A fuzzy finder over lists

return {
   "nvim-telescope/telescope.nvim", 
    dependencies = "nvim-lua/plenary.nvim",
    config = function() 
        local telescope = require('telescope.builtin')

        vim.keymap.set("n", "<leader>ff", telescope.find_files, {})
        vim.keymap.set("n", "<leader>fg", telescope.git_files, {})
        vim.keymap.set("n", "<leader>gf", function () 
            telescope.grep_string({ search = vim.fn.input("Grep > ") })
        end)
    end
}
