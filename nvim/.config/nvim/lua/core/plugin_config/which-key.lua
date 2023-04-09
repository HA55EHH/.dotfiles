local wk = require("which-key")
-- As an example, we will create the following mappings:
--  * <leader>ff find files
--  * <leader>fr show recent files
--  * <leader>fb Foobar
-- we'll document:
--  * <leader>fn new file
--  * <leader>fe edit file
-- and hide <leader>1

wk.register({
  f = {
    name = "Find", -- optional group name
    f = { "Find File" }, -- create a binding with label
    r = { "Find Recent" },
  },
}, { prefix = "<leader>" })

wk.register({
  s = {
    name = "Test", -- optional group name
    n = {":source $MYVIMRC<CR>", "[S]ource [N]vim" }, -- create a binding with label
  },
}, { prefix = "<leader>" })
