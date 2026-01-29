return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      -- your picker configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      win = {
        -- input window
        input = {
          keys = {
            -- to close the picker on ESC instead of going to normal mode,
            -- add the following keymap to your config
            -- ["<Esc>"] = { "stopinsert", mode = { "i" } },
          },
        },
      },
    },
  },
}
