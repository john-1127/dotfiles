-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local remap = LazyVim.safe_keymap_set
remap("i", "ii", "<Esc>")
remap("n", "a", "A")
