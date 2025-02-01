-- Tab navigation
vim.keymap.set('n', '<C-n>', ':tabnew<CR>', { desc = 'New Tab' })
vim.keymap.set('n', '<A-]>', ':tabnext<CR>', { desc = 'Next Tab' })
vim.keymap.set('n', '<A-[>', ':tabprevious<CR>', { desc = 'Previous Tab' })
vim.keymap.set('n', '<C-c>', ':tabclose<CR>', { desc = 'Close Tab' })

-- Open terminal
vim.keymap.set('n', '<Space>t', function()
  vim.cmd('botright 15split | term zsh')
  vim.cmd('startinsert')
end, { desc = 'Open terminal' })

-- Telescope keymaps
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<Space>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<Space>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<Space>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<Space>fp', require('telescope').extensions.project.project, { desc = 'Telescope project' })

-- Open Copilot chat
vim.keymap.set('n', '<Space>c', require('CopilotChat').open, { desc = 'Open CopilotChat' })

vim.keymap.set('v', '<Space>c', function()
  local actions = require("CopilotChat.actions")
  require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
end, { desc = "CopilotChat - Prompt actions" })

