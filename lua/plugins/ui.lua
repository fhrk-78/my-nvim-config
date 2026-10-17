return {
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    },
  },
  {'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      sidebar_filetypes = {
        NvimTree = true,
      },
    },
    version = "^1.0.0",
  },
  {
    "petertriho/nvim-scrollbar",
    event = { "BufReadPost", "BufAdd", "BufNewFile" },
    opts = {
      handlers = {
        gitsigns = true,
        search = true,
      },
    },
  },
  {
    'kevinhwang91/nvim-hlslens'
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    opts = {
      cmdline = {
        enabled = true,
        view = "cmdline",
      },
      messages = {
        enabled = true,
        view = "notify",
        view_error = "notify",
        view_warn = "notify",
      },
      presets = {
        bottom_search = true,
        command_palette = false,
        long_message_to_split = true,
      },
    },
  },
  {
    "Mofiqul/vscode.nvim",
    priority = 1000,
    config = function()
      require("vscode").setup({
        style = "dark",
        transparent = false,
        italic_comments = true,
        disable_nvimtree_bg = true,
      })

      vim.cmd.colorscheme("vscode")
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = 15,
      direction = "horizontal",
      open_mapping = [[<C-\>]],
      start_in_insert = true,
      persist_size = true,
      close_on_exit = false,
      shell = vim.o.shell,
    },
  },
}

