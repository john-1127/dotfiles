-- ~/.config/nvim/lua/plugins/blink.lua
return {
  "saghen/blink.cmp",
  opts = {
    completion = {
      menu = {
        border = "rounded",
        draw = {
          columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind" } },
        },
      },
      documentation = {
        auto_show = true,
        auto_show_delay_ms = 200,
        window = { border = "rounded" },
      },
    },
    keymap = {
      -- set to 'none' to disable the 'default' preset
      preset = "enter",
      ["<Tab>"] = { "select_next", "fallback" },
    },
  },
}
