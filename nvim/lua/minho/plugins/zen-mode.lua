-- zen-mode.nvim
-- A plugin to toggle a "zen mode" editor in which without distractions

return {
    "folke/zen-mode.nvim",
    name = "zen-mode",
    opts = { 
        window = { width = 0.5 },
    },
    config = function()
        local zen = require("zen-mode.view")
        vim.keymap.set('n', "<leader>z", zen.toggle) 
    end
}
