vim.g.mapleader = " "
--EX, so ,w
--FILES mapping
vim.keymap.set({'n','v'}, '<leader>fs', '<Cmd>w<Cr>', {desc='save [f]ile'})
vim.keymap.set({'n','v'}, '<leader>fS', '<Cmd>so<Cr>', {desc='source [o]ut'})
vim.keymap.set({'n','v'}, '<leader>pe', '<Cmd>Ex<Cr>', {desc='source [o]ut'})
vim.keymap.set('n', '<leader>fn', '<cmd>enew<cr>', {desc='[n]ew file' })

--WINDOWS mapping
vim.keymap.set('n', '<leader>wv', "<C-w>v<C-w>l",{desc="split [v]erticaly" })
vim.keymap.set('n', '<leader>wd', "<C-w><C-q>",{desc="close window" })
vim.keymap.set('n', '<leader>ww', "<C-w><C-w>",{desc="switch [w]indows" })
vim.keymap.set('n', '<leader>wl', "<C-w>l",{desc="go right" })
vim.keymap.set('n', '<leader>wh', "<C-w>h",{desc="go left" })

--TOGGLES mapping
vim.keymap.set('n', '<leader>Tt', '<cmd>terminal fish<cr>', {desc='[t]erminal' })
vim.keymap.set('n', '<leader>Tl', '<cmd>set list<cr>', {desc='whitespaces yes' })
vim.keymap.set('n', '<leader>Tl', '<cmd>set nolist<cr>', {desc='whitespaces [n]o' })
vim.keymap.set('n', '<leader>Ts1', '<cmd>set signcolumn=yes:1<cr>', {desc='[s]ign column [1]' })
vim.keymap.set('n', '<leader>Ts3', '<cmd>set signcolumn=yes:3<cr>', {desc='[s]ign column [3]' })
vim.keymap.set('n', '<leader>Ts5', '<cmd>set signcolumn=yes:5<cr>', {desc='[s]ign column [5]' })
vim.keymap.set('n', '<leader>Ts7', '<cmd>set signcolumn=yes:7<cr>', {desc='[s]ign column [7]' })

--TABS mapping
vim.keymap.set('n', '<leader>to', '<cmd>tabnew<cr>',{desc= '[o]pen tab'})
vim.keymap.set('n', '<leader>tn', '<cmd>tabnext<cr>', {desc='[n]ext tab'})
vim.keymap.set('n', '<leader>tp', '<cmd>tabprevicious<cr>', {desc='[p]previcious tab'})
vim.keymap.set('n', '<leader>td', '<cmd>tabclose<cr>', {desc='close'})
vim.keymap.set('n', '<leader>tD', '<cmd>tabonly<cr>', {desc='close all'})
vim.keymap.set('n', '<leader>ts', '<cmd>set showtabline=1<cr>', {desc='[s]how'})
vim.keymap.set('n', '<leader>th', '<cmd>set showtabline=0<cr>', {desc='[h]ide'})

--line move
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- half page jump
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- search in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever 
vim.keymap.set({"n", "v"}, "<leader>y", [["*y]])
vim.keymap.set({"n", "v"}, "<leader>Y", [["+y]])

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")


vim.keymap.set('i', "<C-@>", "<C-Space>")

vim.keymap.set("n", "<leader>fr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set({'n', 'v', 'i'}, '<C-S-i>',
	function ()
		local width = vim.api.nvim_win_get_width(0)
		vim.api.nvim_win_set_width(0, width + 10)
	end,
	{ desc='enlarge window'})

vim.keymap.set({'n', 'v', 'i'}, '<C-S-d>',
	function ()
		local width = vim.api.nvim_win_get_width(0)
		vim.api.nvim_win_set_width(0, width - 10)
	end,
	{ desc='enlarge window'})

vim.keymap.set('v', "<C-'>", "lmao<Esc>i'<Esc>`aa'<Esc>")
vim.keymap.set('v', "<C-S-'>", 'lmao<Esc>i"<Esc>`aa"<Esc>')
vim.keymap.set('v', "<C-0>", "lmao<Esc>i(<Esc>`aa)<Esc>")
vim.keymap.set('v', "<C-]>", "lmao<Esc>i[<Esc>`aa]<Esc>")
vim.keymap.set('v', "<C-9>", "lmao<Esc>i{<Esc>`aa}<Esc>")

-- terminal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')
