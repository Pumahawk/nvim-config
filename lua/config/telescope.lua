-- Telescope configuration
-- Files 
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fo', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})

-- Git
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gc', builtin.git_bcommits, {})

-- Coding
vim.keymap.set('n', '<leader>ss', builtin.lsp_document_symbols, {})
-- vim.keymap.set('n', '<leader>sw', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>sw', builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set('n', '<leader>r', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>T', builtin.treesitter, {})
vim.keymap.set('n', '<leader>fi', builtin.lsp_incoming_calls, {})
vim.keymap.set('n', '<leader>fO', builtin.lsp_outgoing_calls, {})

-- Commands
vim.keymap.set('n', '<leader>p', builtin.commands, {})

-- Diagnostic
vim.keymap.set('n', '<leader>D', builtin.diagnostics, {})
