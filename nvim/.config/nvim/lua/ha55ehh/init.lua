require('ha55ehh.keymap')
require('ha55ehh.packer')
require('ha55ehh.set')
require('ha55ehh.telescope')
require('ha55ehh.lsp')
require('ha55ehh.cmp')

local augroup = vim.api.nvim_create_augroup
ha55ehhGroup = augroup('ha55ehh', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 200, -- how long to display highlight for in ms
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = ha55ehhGroup,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})
