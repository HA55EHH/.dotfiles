local Remap = require('ha55ehh.keymap')

local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap


--MAPPINGS - NORMAL
nnoremap("<silent> <C-f>",":silent !tmux neww tmux-sessionizer<CR>")
nnoremap("<leader>pv", ":Vex<CR>")
nnoremap("<leader><CR>", ":so ~/.config/nvim/init.vim<CR>")
nnoremap("<leader>x", ":!chmod +x %<CR>")

--MAPPINGS - VISUAL
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

