return {
  {
    "nvim-tree/nvim-tree.lua",
    commit = "8b8d457",
    requires = { { "nvim-tree/nvim-web-devicons" } },
    opts = {
      sync_root_with_cwd = true,
      view = {
        adaptive_size = true,
        mappings = {
          list = {
            { key = { "L" }, action = "cd" },
            { key = { "l", "<CR>", "<2-LeftMouse>" }, action = "edit" },
            { key = "<C-s>", action = "split" },
            { key = "<C-v>", action = "vsplit" },
            { key = "<C-t>", action = "tabnew" },
            { key = "h", action = "close_node" },
            { key = "i", action = "preview" },
            { key = "R", action = "refresh" },
            { key = "c", action = "create" },
            { key = "D", action = "remove" },
            { key = "r", action = "rename" },
            { key = "d", action = "cut" },
            { key = "y", action = "copy" },
            { key = "p", action = "paste" },
            { key = "gyn", action = "copy_name" },
            { key = "gyp", action = "copy_path" },
            {
              key = "gya",
              action = "copy_absolute_path",
            },
            { key = "H", action = "dir_up" },
            { key = "s", action = "" },
            { key = "q", action = "close" },
          },
        },
      },
      renderer = {
        full_name = true,
        group_empty = true,
        special_files = {},
        symlink_destination = false,
        indent_markers = {
          enable = true,
        },
        icons = {
          git_placement = "signcolumn",
          show = {
            file = true,
            folder = false,
            folder_arrow = true,
            git = true,
          },
        },
      },
      update_focused_file = {
        enable = true,
        update_root = true,
        ignore_list = { "help" },
      },
      diagnostics = {
        enable = true,
        show_on_dirs = false,
      },
      filters = {
        custom = {
          "^.git$",
        },
      },
      actions = {
        change_dir = {
          enable = false,
          restrict_above_cwd = true,
        },
        open_file = {
          resize_window = true,
          window_picker = {
            chars = "aoeui",
          },
        },
        remove_file = {
          close_window = false,
        },
      },
      log = {
        enable = false,
        truncate = true,
        types = {
          all = false,
          config = false,
          copy_paste = false,
          diagnostics = false,
          git = false,
          profile = false,
          watcher = false,
        },
      },
    },
  },
}
