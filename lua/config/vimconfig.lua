vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<c-k>", "<cmd>wincmd k<cr>")
vim.keymap.set("n", "<c-j>", "<cmd>wincmd j<cr>")
vim.keymap.set("n", "<c-h>", "<cmd>wincmd h<cr>")
vim.keymap.set("n", "<c-l>", "<cmd>wincmd l<cr>")
vim.keymap.set("n", ";", ":")

vim.keymap.set("i", "jk", "<Esc>")

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.winborder = "single"

vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
