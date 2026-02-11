-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local remap = LazyVim.safe_keymap_set

-- My keymaps
remap("i", "ii", "<Esc>", { desc = "Change mode from Insert to Normal" })
remap("n", "a", "A", { desc = "Jump to the End of the line in Insert mode" })

-- Tags
remap("n", "gj", "g<C-]>", { desc = "Go to Definition (Tags)" })
remap("n", "gp", "<C-t>", { desc = "Tag stack back" })

-- Tabs
remap("n", "tn", "<cmd>tabnew<cr>", { desc = "New Tab" })
remap("n", "td", "<cmd>tabclose<cr>", { desc = "Close Tab" })
remap("n", "th", "<cmd>tabprevious<cr>", { desc = "Prev Tab" })
remap("n", "tl", "<cmd>tabnext<cr>", { desc = "Next Tab" })
remap("n", "tN", "<cmd>tab split<cr>", { desc = "Open Current Buffer in New Tab" })
