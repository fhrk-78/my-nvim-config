require("config.lazy")

require("config.terminals")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.clipboard = 'unnamedplus'

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.cursorline = true

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        _G.toggle_terminal("pwsh")
        vim.cmd("NvimTreeOpen")
    end,
})

