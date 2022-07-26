local Remap = require('ha55ehh.keymap')

local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap


--MAPPINGS - NORMAL
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")
nnoremap("<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
nnoremap("<leader>pv", "<cmd>Vex<CR>")
nnoremap("<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--MAPPINGS - VISUAL
vnoremap("J", ":m '>+1<CR>gv=gv")
vnoremap("K", ":m '<-2<CR>gv=gv")

xnoremap("<leader>p", "\"_dP")

--MAPPINGS - imap
nnoremap("<leader><leader>b", "<cmd>w<CR><cmd>term python %<CR>")
