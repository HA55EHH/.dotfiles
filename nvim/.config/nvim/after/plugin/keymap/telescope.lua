local Remap = require('ha55ehh.keymap')
local nnoremap = Remap.nnoremap

nnoremap("<leader>ff", function()
    require('telescope.builtin').find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})
end)
nnoremap("<leader>pw", function()
	require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }
end)
nnoremap("<leader>pb", function()
	require('telescope.builtin').buffers()
end)
nnoremap("<leader>fg", function()
	require('telescope.builtin').git_files()
end)
nnoremap("<leader>vh", function()
	require('telescope.builtin').help_tags()
end)
nnoremap("<leader>gw", function()
	require('telescope').extensions.git_worktree.git_worktrees()
end)
nnoremap("<leader>gm", function()
	require('telescope').extensions.git_worktree.create_git_worktree()
end)
nnoremap("<leader>ps", function()
	require('telescope.builtin').grep_string({vimgrep_arguments = { 'rg', '--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--hidden', '--smart-case', '-u' },  search = vim.fn.input("Grep For > ")})
end)


