require("config.lazy")

vim.g.mapleader = "<Space>"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.opt.number = true

-- Open some window
vim.keymap.set("n", "<C-n>", "<Cmd>NvimTreeToggle<CR>", {
  desc = "Open Nvim-tree"
})

-- Move window
vim.keymap.set("n", "<C-l>", "<C-w>l", {
  desc = "Move to right window",
})
vim.keymap.set("n", "<C-h>", "<C-w>h", {
  desc = "Move to left window",
})

-- Move between buffers (Barbar)
vim.keymap.set("n", "<A-h>", "<Cmd>BufferPrevious<CR>", {
  desc = "Previous buffer",
})
vim.keymap.set("n", "<A-l>", "<Cmd>BufferNext<CR>", {
  desc = "Next buffer",
})

-- Close current buffer
vim.keymap.set("n", "<A-w>", "<Cmd>BufferClose<CR>", {
  desc = "Close buffer",
})

