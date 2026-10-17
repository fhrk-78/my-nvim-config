local Terminal = require("toggleterm.terminal").Terminal

local profiles = {
  pwsh = {
    cmd = "pwsh",
    direction = "horizontal",
    display_name = "PowerShell",
    count = 1,
  },

  git = {
    cmd = "lazygit",
    direction = "float",
    display_name = "Git",
    count = 2,
  },

  wsl = {
    cmd = "wsl",
    direction = "horizontal",
    display_name = "WSL",
    count = 3,
  },

  docker = {
    cmd = "lazydocker",
    direction = "float",
    display_name = "Docker",
    count = 4,
  },
}

local terminals = {}

for name, opts in pairs(profiles) do
  terminals[name] = Terminal:new(
    vim.tbl_extend("force", {
      hidden = true,
    }, opts)
  )

  vim.api.nvim_create_user_command(
    "Term" .. name:gsub("^%l", string.upper),
    function()
      terminals[name]:toggle()
    end,
    {}
  )
end

vim.keymap.set("n", "<leader>ts", function()
  terminals.pwsh:toggle()
end, { desc = "Terminal: PowerShell" })

vim.keymap.set("n", "<leader>tg", function()
  terminals.git:toggle()
end, { desc = "Terminal: Git" })

vim.keymap.set("n", "<leader>tw", function()
  terminals.wsl:toggle()
end, { desc = "Terminal: WSL" })

vim.keymap.set("n", "<leader>td", function()
  terminals.docker:toggle()
end, { desc = "Terminal: Docker" })

_G.toggle_terminal = function(name)
    terminals[name]:toggle()
end

