-- DEFINITIONS AND ALIASES
vim.g.root_spec = { "lsp", { ".git", "lua" }, "cwd" }

local opt = vim.opt

-- GLOBAL OPTIONS
-- Functionalities, buffers
opt.autowrite = false 				        -- Disables autosave, manually saves file (there is backup)
opt.clipboard = "unnamedplus" 			    -- Sync with the system's clipboard
opt.completeopt = "menu,menuone,noselect" 	-- Options for the insert autocompletion
opt.confirm = true 				            -- Prompts to confirm changes after closing buffer
opt.grepprg = "rg --vimgrep"		        -- Grep command to be used by Vim
opt.mouse = "a"					            -- Enables mouse mode
opt.splitbelow = true				        -- Forces all horizontal splits to below the current window
opt.splitright = true				        -- Forces all vertical splits to the right of current window
opt.timeoutlen = 500				        -- Time (in ms) to wait for a mapped sequence
opt.undofile = true				            -- Allows for persisent undoing
opt.updatetime = 300				        -- Time (in ms) for swap file saving and cursor triggering
opt.virtualedit = "block"			        -- Allow cursor to press empty text in block-visual mode
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }
opt.splitkeep = "screen"			        -- Keeps the lines on the screen locked when resizing window

-- Editor appearence and tweaks
opt.cursorline = true 				        -- Highlights current line
opt.conceallevel = 0				        -- Disables concealling characters
opt.laststatus = 3				            -- Always displays the statusline
opt.number = true				            -- Displays line numbers
opt.pumblend = 30				            -- Transparency of the pop-up menu
opt.pumheight = 10				            -- Maximum number of entries in the pop-up menu
opt.relativenumber = true			        -- Disables relative line numbering
opt.scrolloff = 8				            -- Number of lines around the cursor to display
opt.sidescrolloff = 8				        -- Number of lines around the cursor to display
opt.showmode = false				        -- Disables the display of the current mode
opt.showtabline = 0				            -- Displays tab lines always
opt.wrap = false				            -- Disable line wrapping
opt.expandtab = true                        -- Idents with spaces (better for column numbering)
opt.tabstop = 4					            -- Identation size
opt.signcolumn = "yes"				        -- Always shows the sign column

-- Coding behaviour
opt.formatoptions = "tcqjroln"			    -- Autoformat text options
opt.grepformat = "%f:%l:%c:%m"			    -- Formatting of the `grep` commands
opt.ignorecase = true				        -- Ignore case in search commands
opt.inccommand = "nosplit"			        -- Shows the results from search incrementally in the buffer
opt.hlsearch = true				            -- Highlights all results from the search
opt.smartcase = true				        -- Do not ignore case with capitals
opt.smartindent = true				        -- Automatically idents the text
opt.shiftround = true				        -- Automatically rounds the identation
opt.shiftwidth = 4				            -- Round identation width
