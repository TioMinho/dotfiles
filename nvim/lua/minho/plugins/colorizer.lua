-- CSS Color
-- A pluging providing multi-syntax context-sentsitive color name highlighter

return {
    'norcalli/nvim-colorizer.lua',
    config = function()
        require('colorizer').setup()
    end
}
