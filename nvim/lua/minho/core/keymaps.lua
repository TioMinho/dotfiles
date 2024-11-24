-- AUXILIARY VARIABLES AND FUNCTIONS
local opts   = { noremap = true, silent = true }

local keymap = vim.keymap.set    -- Shortening alias

-- Leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocaleader = " "

-- NORMAL MODE --
-- File/Window operations
keymap("n", "<leader>q", ":q<CR>", opts)
keymap("n", "<leader>w", ":w<CR>", opts)

-- Navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<leader>|", "<C-w>v", opts)
keymap("n", "<leader>-", "<C-w>s", opts)

keymap("n", "<leader>fe", ":Explore<CR>", opts)
keymap("n", "<leader>e",  ":Lex 30<CR>", opts)

-- Resizing
keymap("n", "<leader>K", ":resize -2<CR>", opts)
keymap("n", "<leader>J", ":resize +2<CR>", opts)
keymap("n", "<leader>L", ":vertical resize -2<CR>", opts)
keymap("n", "<leader>H", ":vertical resize +2<CR>", opts)

-- Buffers
keymap("n", "<leader><C-l>", ":bnext<CR>", opts)
keymap("n", "<leader><C-h>", ":bprevious<CR>", opts)

-- Tabs
keymap("n", "<leader><C-t>", ":tabnew<CR>:Explore<CR>", opts)
keymap("n", "<leader><C-l>", ":+tabnext<CR>", opts)
keymap("n", "<leader><C-h>", ":-tabnext<CR>", opts)

-- Moving lines in normal mode
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- Clears search hilighting
keymap("n", "<leader>cs", ":nohlsearch<CR>", opts)

-- VISUAL MODE --
-- Persisent ident mode
keymap("v", "<A-l>", ">gv^", opts)
keymap("v", "<A-h>", "<gv^", opts)

-- Moving selection
keymap("v", "<A-j>", ":m '>+1<CR>==", opts)
keymap("v", "<A-k>", ":m '<-2<CR>==", opts)
keymap("v", "p", "_dP", opts)

-- (BLOCK) VISUAL MODE --
-- Moving selection
keymap("x", "<A-j>", ":move '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv=gv", opts)
