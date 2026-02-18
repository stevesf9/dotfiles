-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Easy way to get back to normal mode from home row

vim.keymap.set("i", "jk", "<ESC>", { silent = true })
vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.keymap.set("i", "kj", "<Esc>", { silent = true }) -- kj simulates ESC

-- Automatically close brackets, parethesis, and quotes
vim.keymap.set("i", "'", "''<left>")
vim.keymap.set("i", '"', '""<left>')
vim.keymap.set("i", "(", "()<left>")
vim.keymap.set("i", "[", "[]<left>")
vim.keymap.set("i", "{", "{}<left>")
vim.keymap.set("i", "{;", "{};<left><left>")
vim.keymap.set("i", "/*", "/**/<left><left>")

-- go to  beginning and end
vim.keymap.set("i", "<C-b>", "<Home>")
vim.keymap.set("i", "<C-e>", "<End>")

-- insert mode navigation
vim.keymap.set("i", "<C-h>", "<Left>")
vim.keymap.set("i", "<C-l>", "<Right>")
vim.keymap.set("i", "<C-j>", "<Up>")
vim.keymap.set("i", "<C-k>", "<Down>")

vim.keymap.set("n", ";", ":")

-- buffer navigation
vim.keymap.set("n", "<Tab>", ":bnext <CR>") -- Tab goes to next buffer
vim.keymap.set("n", "<S-Tab>", ":bprevious <CR>") -- Shift+Tab goes to previous buffer
vim.keymap.set("n", "<leader>d", ":bd! <CR>") -- Space+d delets current buffer

-- reload config
vim.keymap.set("n", "<leader>r", ":source ~/AppData/Local/nvim/init.lua<CR>") -- reload neovim config

-- Dismiss Noice Message
vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })
