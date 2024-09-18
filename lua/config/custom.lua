-- Vim basic configurazion
vim.wo.relativenumber = true
vim.wo.number = true
vim.wo.scrolloff = 10
vim.cmd.colorscheme "catppuccin"

-- Paste
vim.cmd('xnoremap <leader>p "_dP')

-- Terminal
vim.keymap.set('n', '<leader>tt', '<C-W>s:term<CR>i', {})
vim.keymap.set('n', '<leader>tT', ':term<CR>i', {})

-- Explorer
vim.keymap.set('n', '<leader>xx', ':Ex<CR>', {})
vim.keymap.set('n', '<leader>xs', ':Sex<CR>', {})
vim.keymap.set('n', '<leader>xv', ':Vex<CR>', {})

-- Jump and center
vim.keymap.set('n', 'n', 'nzz', {})
vim.keymap.set('n', 'N', 'Nzz', {})
vim.keymap.set('n', '<C-o>', '<C-o>zz', {})
vim.keymap.set('n', '<C-i>', '<C-i>zz', {})


