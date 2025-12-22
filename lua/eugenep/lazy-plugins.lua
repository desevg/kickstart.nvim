-- [[ Configure and install plugins ]]
--
--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  require 'eugenep.plugins.neo-tree',
  require 'eugenep.plugins.treesitter',
  require 'eugenep.plugins.which-key',
  require 'eugenep.plugins.mini-icons',
  require 'eugenep.plugins.undo-tree',
  require 'eugenep.plugins.theme',
  require 'eugenep.plugins.autopair',
  require 'eugenep.plugins.telescope'
})
