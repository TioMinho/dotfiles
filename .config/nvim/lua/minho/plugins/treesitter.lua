-- treesitter.nvim
-- A plugin that interfaces neovim's tree-sitter feature to provide
-- language-based functionalities (e.g., syntax highlighting and 
-- smart identation)

return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function ()
        local configs = require('nvim-treesitter.configs')

        configs.setup({
            ensure_installed = {'c', 'cpp', 'lua', 'vim', 'vimdoc', 'query'},
            auto_install = true,
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
