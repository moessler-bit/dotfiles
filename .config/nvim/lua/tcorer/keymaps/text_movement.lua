-- move selected line up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- indent and deindent selected line
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")
