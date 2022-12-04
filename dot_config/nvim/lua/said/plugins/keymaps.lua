local opts = { noremap = true, silent = true }

--Remap space as leader key
vim.keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
-- Better window navigation
local keymap = vim.keymap.set

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- handy kemaps
vim.keymap.set("n", "<leader>q", "<cmd>qa!<CR>", opts)
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", opts)
vim.keymap.set("n", "<leader>z", "<cmd>bd!<CR>", opts)
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", opts)
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>", opts)
vim.keymap.set("n", "<Leader>h", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<Leader>i", "<cmd>hi comment guifg=#ABCDEF<CR>")
-- vim.keymap.set("n", "<Leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>")

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
vim.keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x')

-- nnn file Exlplorer
vim.keymap.set("n", "<leader>e", "<cmd>NnnPicker<CR>", opts)
vim.keymap.set("t", "<leader>e", "<cmd>NnnPicker<CR>", opts)

-- Dap Breakpoint, all others goes to filetype directory

-- Terminal
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<CR>", opts)
vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm size=20 direction=horizontal<CR>", opts)
vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", opts)

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
vim.keymap.set("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
vim.keymap.set("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Move text up and down
vim.keymap.set("v", "<A-j>", ":m .+1<CR>==", opts)
vim.keymap.set("v", "<A-k>", ":m .-2<CR>==", opts)
vim.keymap.set("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", opts)
vim.keymap.set("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
vim.keymap.set("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
