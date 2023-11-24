local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ef', builtin.find_files, {})
vim.keymap.set('n', '<leader>eg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
