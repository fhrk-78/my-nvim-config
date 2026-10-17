local function indent_info()
  if vim.bo.expandtab then
    return "Spaces: " .. vim.bo.shiftwidth
  else
    return "Tabs: " .. vim.bo.tabstop
  end
end

return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "folke/trouble.nvim",
    },
    opts = {
      options = {
        icons_enabled = true,
        theme = "vscode",
        globalstatus = true,
        component_separators = "",
        section_separators = "|",
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = {
          "encoding",
          "fileformat",
          "filetype",
          indent_info,
          "location",
        },
	lualine_y = {},
        lualine_z = {
          function()
            return os.date("%Y/%m/%d %H:%M:%S")
          end,
        },
      },
      extensions = {
        "nvim-tree",
        "lazy",
      },
    },
  },
}

