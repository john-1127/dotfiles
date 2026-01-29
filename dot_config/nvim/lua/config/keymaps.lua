-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local remap = LazyVim.safe_keymap_set

-- My keymaps
remap("i", "ii", "<Esc>", { desc = "Change mode from Insert to Normal" })
remap("n", "a", "A", { desc = "Jump to the End of the line in Insert mode" })

remap("n", "gj", "g<C-]>", { desc = "Go to Definition (Tags)" })
remap("n", "gp", "<C-t>", { desc = "Tag stack back" })

-- remap("n", "gj", function()
--   local keyword = vim.fn.expand("<cword>")
--   Snacks.picker.tags({
--     pattern = "^" .. keyword .. "$",
--     matcher = {
--       fuzzy = false,
--       regex = true,
--     },
--   })
-- end, { desc = "Go to Definition (Snacks Tags)" })
--
-- remap("n", "gj", function()
--   Snacks.picker.grep({
--     args = { "/home/john/.cache/nvim/ctags/" },
--     limit = 100,
--     need_search = true,
--     promtp = "󰓻 Static Tags > ",
--   })
-- end, { desc = "Go to Definition (Snacks Tags)" })
