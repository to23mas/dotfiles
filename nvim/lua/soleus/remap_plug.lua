vim.g.mapleader = " "

local builtinn = require('telescope.builtin')

--TELESCOPE keymaps
vim.keymap.set('n','<leader>fr', '<cmd>Telescope oldfiles<cr>', {desc='open [r]ecent file' })

vim.keymap.set('n', '<leader>pf', function () builtinn.find_files() end, {desc= "[f]ind file" })
vim.keymap.set('n', '<leader>pg', function () builtinn.git_files() end, {desc= "[g]it files" })
vim.keymap.set('n', '<leader>ps', function () builtinn.grep_string({ search = vim.fn.input("Grep >") }) end, {desc= "[s]search string / grep" })
vim.keymap.set('n', '<leader>pb', function () builtinn.buffers() end, {desc= "search [b]uffers" })
vim.keymap.set('n', '<leader>ph', function () builtinn.help_tags() end, {desc= "[h]elp search" })
vim.keymap.set('n', '<leader>pm', function () builtinn.makrs() end, {desc= "marks" })

--EASY_MOTION keymaps
vim.keymap.set('n', '<leader>jl', "<cmd>HopLine<cr>", {desc="jump to [l]ine" })
vim.keymap.set('n', '<leader>jw', "<cmd>HopWord<cr>", {desc="jump to [w]ord" })
vim.keymap.set('n', '<leader>jc', "<cmd>HopChar1<cr>", {desc="jump to [c]haracter 1" })
vim.keymap.set('n', '<leader>jC', "<cmd>HopChar2<cr>", {desc="jump to [C]haracter 2" })

vim.keymap.set('n', '<leader>jjl', "<cmd>HopLineMW<cr>", {desc="jump to line" })
vim.keymap.set('n', '<leader>jjw', "<cmd>HopWordMW<cr>", {desc="jump to word" })
vim.keymap.set('n', '<leader>jjc', "<cmd>HopChar1MW<cr>", {desc="jump to character 1" })
vim.keymap.set('n', '<leader>jjC', "<cmd>HopChar2MW<cr>", {desc="jump to character 2" })

--LSP keymap,
vim.keymap.set('n', '<leader>lR', '<cmd>LspRestart<cr>', {desc="[R]eload lsp" })


--GIT
vim.keymap.set('n', '<leader>gs', '<cmd>Neogit<cr>', {desc="neo[g]it"})

--HARPOON
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>ha", function() mark.add_file() end)
vim.keymap.set("n", "<leader>he", function() ui.toggle_quick_menu() end)
vim.keymap.set("n", "<leader>h1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>h2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>h3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>h4", function() ui.nav_file(4) end)


