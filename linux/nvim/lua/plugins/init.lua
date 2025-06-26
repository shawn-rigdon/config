require('plugins.telescope')
require('plugins.nvim-tree')
require('plugins.nvim-web-devicons')
require('plugins.CopilotChat')

-- define keymaps for commands
-- "mode", "key", "command", "options"
vim.keymap.set('n', '<leader>cc', '<cmd>CopilotChat<cr>', { noremap = true, silent = true, desc = 'Open Copilot Chat' })
vim.keymap.set('v', '<leader>ce', '<cmd>CopilotChatExplain<cr>', { noremap = true, silent = true, desc = 'Explain Code' })
vim.keymap.set('v', '<leader>cr', '<cmd>CopilotChatReview<cr>', { noremap = true, silent = true, desc = 'Review Code' })
vim.keymap.set('v', '<leader>cf', '<cmd>CopilotChatFix<cr>', { noremap = true, silent = true, desc = 'Fix Code' })
vim.keymap.set('v', '<leader>co', '<cmd>CopilotChatOptimize<cr>', { noremap = true, silent = true, desc = 'Optimize Code' })
vim.keymap.set('v', '<leader>cd', '<cmd>CopilotChatDocs<cr>', { noremap = true, silent = true, desc = 'Generate Docs' })
vim.keymap.set('v', '<leader>ct', '<cmd>CopilotChatTests<cr>', { noremap = true, silent = true, desc = 'Generate Tests' })
vim.keymap.set('n', '<leader>cm', '<cmd>CopilotChatCommit<cr>', { noremap = true, silent = true, desc = 'Generate Commit Message' })
vim.keymap.set('v', '<leader>cs', '<cmd>CopilotChatCommit<cr>', { noremap = true, silent = true, desc = 'Generate Commit for Selection' })
