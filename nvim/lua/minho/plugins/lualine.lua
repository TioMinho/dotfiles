-- lualine.lua
-- A status bar plugin

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() 
        lualine = require('lualine')

        lualine.setup({
            theme = "auto",
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'tabs'},
                lualine_c = {'filename', 'diagnostics'},
                lualine_x = {'encoding', 'fileformat', 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
            }
        })
    end
}
