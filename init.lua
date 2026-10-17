require("config.lazy")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.cursorline = true

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd("ToggleTerm")
        vim.cmd("NvimTreeOpen")
    end,
})

vim.api.nvim_create_user_command("Q", function()
    vim.cmd("qa")
end, {})

