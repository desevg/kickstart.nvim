-- VSCode-specific configuration
-- Load base keymaps first, then override only VSCode-specific ones

-- Set leader key (must be set before loading keymaps)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Load base keymaps from core/keymaps.lua ]]
-- This gives us all the basic Vim motions and text editing keymaps
require 'eugenep.core.keymaps'

-- [[ VSCode-specific overrides ]]
-- Only override keymaps that need to call VSCode API

local keymap = vim.keymap.set

-- Helper function to call VSCode commands
local function vscode_action(action)
  return function()
    vim.fn.VSCodeNotify(action)
  end
end

-- File management (override from base keymaps)
keymap('n', '<leader>w', vscode_action('workbench.action.files.save'), { desc = 'Save' })
keymap('n', '<C-s>', vscode_action('workbench.action.files.save'), { desc = 'Save file' })

-- File navigation (VSCode-specific, no override needed)
keymap('n', '<leader>ff', vscode_action('workbench.action.quickOpen'), { desc = 'Find files' })
keymap('n', '<leader>fg', vscode_action('workbench.action.findInFiles'), { desc = 'Find in files' })

-- Buffer/Editor navigation (override from base keymaps)
keymap('n', '<S-l>', vscode_action('workbench.action.nextEditor'), { desc = 'Next editor' })
keymap('n', '<S-h>', vscode_action('workbench.action.previousEditor'), { desc = 'Previous editor' })
keymap('n', '<leader>x', vscode_action('workbench.action.closeActiveEditor'), { desc = 'Close editor' })

-- Window/Split management (override from base keymaps)
keymap('n', '<leader>sv', vscode_action('workbench.action.splitEditorRight'), { desc = 'Split right' })
keymap('n', '<leader>sh', vscode_action('workbench.action.splitEditorDown'), { desc = 'Split down' })
keymap('n', '<leader>sx', vscode_action('workbench.action.closeActiveEditor'), { desc = 'Close split' })

keymap('n', '<C-h>', vscode_action('workbench.action.navigateLeft'), { desc = 'Navigate left' })
keymap('n', '<C-l>', vscode_action('workbench.action.navigateRight'), { desc = 'Navigate right' })
keymap('n', '<C-j>', vscode_action('workbench.action.navigateDown'), { desc = 'Navigate down' })
keymap('n', '<C-k>', vscode_action('workbench.action.navigateUp'), { desc = 'Navigate up' })

-- LSP / Code navigation (VSCode-specific)
keymap('n', 'gd', vscode_action('editor.action.revealDefinition'), { desc = 'Go to definition' })
keymap('n', 'gD', vscode_action('editor.action.revealDeclaration'), { desc = 'Go to declaration' })
keymap('n', 'gy', vscode_action('editor.action.goToTypeDefinition'), { desc = 'Go to type definition' })
keymap('n', 'gi', vscode_action('editor.action.goToImplementation'), { desc = 'Go to implementation' })
keymap('n', 'gr', vscode_action('editor.action.goToReferences'), { desc = 'Go to references' })

-- Code actions
keymap('n', '<leader>ca', vscode_action('editor.action.quickFix'), { desc = 'Code action' })
keymap('v', '<leader>ca', vscode_action('editor.action.quickFix'), { desc = 'Code action' })
keymap('n', '<leader>rn', vscode_action('editor.action.rename'), { desc = 'Rename' })

-- Format
keymap('n', '<leader>fm', vscode_action('editor.action.formatDocument'), { desc = 'Format document' })
keymap('v', '<leader>fm', vscode_action('editor.action.formatSelection'), { desc = 'Format selection' })

-- Hover (override K from base if it exists)
keymap('n', 'K', vscode_action('editor.action.showHover'), { desc = 'Show hover' })

-- Diagnostics (override from base keymaps)
keymap('n', '[d', vscode_action('editor.action.marker.prevInFiles'), { desc = 'Previous diagnostic' })
keymap('n', ']d', vscode_action('editor.action.marker.nextInFiles'), { desc = 'Next diagnostic' })
keymap('n', '<leader>ql', vscode_action('workbench.actions.view.problems'), { desc = 'Problems' })

-- Code folding
keymap('n', 'za', vscode_action('editor.toggleFold'), { desc = 'Toggle fold' })
keymap('n', 'zc', vscode_action('editor.fold'), { desc = 'Close fold' })
keymap('n', 'zo', vscode_action('editor.unfold'), { desc = 'Open fold' })
keymap('n', 'zM', vscode_action('editor.foldAll'), { desc = 'Close all folds' })
keymap('n', 'zR', vscode_action('editor.unfoldAll'), { desc = 'Open all folds' })

-- Commenting
keymap('n', 'gcc', vscode_action('editor.action.commentLine'), { desc = 'Comment line' })
keymap('v', 'gc', vscode_action('editor.action.commentLine'), { desc = 'Comment selection' })
