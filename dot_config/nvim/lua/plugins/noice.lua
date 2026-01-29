return {
  {
    "folke/noice.nvim",
    opts = {
      routes = {
        {
          filter = {
            event = "msg_show",
            find = "pri%s+kind%s+tag",
          },
          view = "confirm",
          priority = 200,
          opts = {
            enter = true,
          },
        },
      },
      views = {
        cmdline_popup = {
          backend = "popup",
          zindex = 210,
        },
        confirm = {
          backend = "popup",
          relative = "editor",
          zindex = 200,
          position = {
            row = "50%",
            col = "50%",
          },
          size = {
            width = "auto",
            height = "auto",
            max_height = 100,
          },
          win_options = {
            -- winhighlight = { Normal = "NoiceConfirm", FloatBorder = "NoiceConfirmBorder" },
          },
          border = {
            style = "rounded",
            text = {
              top = " Tags Selection ",
            },
          },
        },
      },
    },
  },
}
