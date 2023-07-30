return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "main", -- HACK: force neo-tree to checkout `main` for initial v3 migration since default branch has changed
  cmd = "Neotree",
  keys = {
    { "<F1>", "<cmd>Neotree toggle<cr>", desc = "Toggle tree" },
  },
  init = function()
    vim.g.neo_tree_remove_legacy_commands = true
  end,
  opts = function()
    return {
      auto_clean_after_session_restore = true,
      close_if_last_window = true,
      sources = { "filesystem", "buffers", "git_status" },
      source_selector = {
        winbar = true,
        content_layout = "center",
      },
      window = {
        width = 30,
        mappings = {
          o = "open",
        },
      },
      filesystem = {
        follow_current_file = { enabled = true },
        hijack_netrw_behavior = "open_current",
        use_libuv_file_watcher = true,
      },
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function(_)
            vim.opt_local.signcolumn = "auto"
          end,
        },
      },
    }
  end,
}
