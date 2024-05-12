local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ha", mark.add_file) -- adds file to harpoon --add
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu) -- lists files in harpoon --explore

vim.keymap.set("n", "<C-n>", function() ui.nav_file(1) end) -- use first file
vim.keymap.set("n", "<C-m>", function() ui.nav_file(2) end) -- use second file
vim.keymap.set("n", "<C-i>", function() ui.nav_file(3) end) -- use third file
vim.keymap.set("n", "<C-[>", function() ui.nav_file(4) end) -- use fourth file
