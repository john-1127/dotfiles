return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      -- your picker configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      sources = {
        tags = {
          need_search = true,
          limit = 100,
        },
      },
      win = {
        -- input window
        input = {
          keys = {},
        },
      },
    },
  },
}
