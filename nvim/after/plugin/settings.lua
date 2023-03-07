-- line numbers
vim.cmd.set('nu rnu')

-- stops moving text on error
vim.opt.signcolumn = 'yes:3'

-- tab width
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.opt.smartindent = true

-- line numbers
vim.cmd.set('numberwidth=4')

vim.opt.incsearch = true
vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50
-- vim.opt.colorcolumn = "80"

vim.cmd.set('listchars=tab:⤑⤑,trail:⍿,nbsp:⎵')
vim.cmd.set('list')

vim.cmd.set('cursorline')

