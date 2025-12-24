-- Detect if running in VSCode
if vim.g.vscode then
  -- VSCode extension: Load only basic keymaps and options
  require 'eugenep.core.vscode'
else
  -- Normal Neovim: Load full configuration
  require 'eugenep.core.options'
  require 'eugenep.core.keymaps'
  require 'eugenep.lazy-bootstrap'
  require 'eugenep.lazy-plugins'
end
