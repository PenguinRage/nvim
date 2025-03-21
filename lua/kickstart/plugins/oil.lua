return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      default_file_explorer = true,
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = false,
        is_always_hidden = function(name, _)
          return name == 'node_modules' or name == '.git'
        end,
      },
      keymaps = {
        ['<c-c>'] = false,
        ['q'] = 'actions.close',
        ['g.'] = { 'actions.toggle_hidden', mode = 'n' },
      },
    },
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
}
