-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- disable Ctrl+Z to prevent accidental suspension of Neovim process
keymap.set("n", "<C-z>", "<Nop>", { desc = "Disable Ctrl+Z to prevent accidental suspension of Neovim" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- 次のバッファに移動
keymap.set("n", "L", ":bnext<CR>", { desc = "Next buffer" })
-- 前のバッファに移動
keymap.set("n", "H", ":bprevious<CR>", { desc = "Previous buffer" })

-- 現在のバッファを削除
keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Delete Buffer" })
-- 現在のバッファ以外を削除
keymap.set("n", "<leader>bo", ":%bd|e#|bd#<CR>", { desc = "Delete Other Buffers" })
