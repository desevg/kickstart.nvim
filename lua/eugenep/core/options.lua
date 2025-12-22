-- [[ Setting options ]]
-- See `:help vim.opt` or `:help option-list`

local opt = vim.opt

-- [[ Line Numbers ]]
opt.number = true                -- Show line numbers
opt.relativenumber = true        -- Show relative line numbers
opt.numberwidth = 4              -- Set number column width

-- [[ Tabs & Indentation ]]
opt.tabstop = 2                  -- Number of spaces tabs count for
opt.shiftwidth = 2               -- Size of an indent
opt.expandtab = true             -- Use spaces instead of tabs
opt.autoindent = true            -- Copy indent from current line when starting new one
opt.smartindent = true           -- Smart autoindenting on new line
opt.breakindent = true           -- Enable break indent (wrapped lines keep indent)

-- [[ Line Wrapping ]]
opt.wrap = false                 -- Disable line wrapping

-- [[ Search Settings ]]
opt.ignorecase = true            -- Ignore case when searching
opt.smartcase = true             -- Override ignorecase if search contains capitals
opt.hlsearch = true              -- Highlight search results
opt.incsearch = true             -- Show search matches as you type

-- [[ Cursor Line ]]
opt.cursorline = true            -- Highlight the current line

-- [[ Appearance ]]
opt.termguicolors = true         -- True color support
opt.background = 'dark'          -- Use dark background
opt.signcolumn = 'yes'           -- Always show sign column (prevents text shift)
opt.colorcolumn = '120'           -- Show column at 80 characters (style guide)
opt.cmdheight = 1                -- Command line height
opt.showmode = false             -- Don't show mode (statusline shows it)
opt.showcmd = true               -- Show command in bottom bar
opt.laststatus = 3               -- Global statusline (single statusline for all windows)

-- [[ Backspace ]]
opt.backspace = 'indent,eol,start' -- Allow backspace on indent, end of line, insert start

-- [[ Clipboard ]]
opt.clipboard = 'unnamedplus'    -- Use system clipboard

-- [[ Split Windows ]]
opt.splitright = true            -- Split vertical window to the right
opt.splitbelow = true            -- Split horizontal window below

-- [[ Whitespace Characters ]]
opt.list = true                  -- Show whitespace characters
opt.listchars = {
  tab = '» ',
  trail = '·',
  nbsp = '␣',
  extends = '›',
  precedes = '‹',
}

-- [[ Scrolling ]]
opt.scrolloff = 10               -- Minimal number of lines to keep above/below cursor
opt.sidescrolloff = 8            -- Minimal number of columns to keep left/right of cursor

-- [[ File Handling ]]
opt.swapfile = false             -- Disable swapfile
opt.backup = false               -- Disable backup
opt.undofile = true              -- Enable persistent undo
opt.undodir = os.getenv('HOME') .. '/.vim/undodir' -- Set undo directory
opt.autoread = true              -- Auto-read file when changed outside of vim
opt.confirm = true               -- Confirm before closing unsaved files

-- [[ Performance ]]
opt.updatetime = 250             -- Faster completion (default is 4000ms)
opt.timeoutlen = 300             -- Time to wait for mapped sequence to complete
opt.lazyredraw = false           -- Don't redraw while executing macros (can cause issues)

-- [[ Command Line ]]
opt.wildmenu = true              -- Enhanced command line completion
opt.wildmode = 'longest:full,full' -- Command-line completion mode
opt.wildignore = '*.o,*~,*.pyc'  -- Ignore compiled files

-- [[ Mouse ]]
opt.mouse = 'a'                  -- Enable mouse support

-- [[ Completion ]]
opt.completeopt = 'menu,menuone,noselect' -- Better completion experience
opt.pumheight = 10               -- Maximum number of items in popup menu

-- [[ Misc ]]
opt.iskeyword:append('-')        -- Consider string-string as whole word
opt.inccommand = 'split'         -- Preview substitutions live as you type
opt.shortmess:append('c')        -- Don't show completion messages
opt.formatoptions:remove({ 'c', 'r', 'o' }) -- Don't insert comment leader automatically
opt.whichwrap:append('<,>,[,],h,l') -- Move to next/previous line with h,l,left,right

-- [[ Folding ]]
opt.foldmethod = 'manual'        -- Folding method (manual, indent, expr, marker, syntax)
opt.foldlevel = 99               -- Start with all folds open
opt.foldenable = false           -- Disable folding by default

-- [[ Spell Checking ]]
opt.spell = false                -- Disable spell checking by default
opt.spelllang = 'en_us'          -- Spell check language

-- [[ Special Characters ]]
opt.fillchars = {
  eob = ' ',                     -- Empty lines at end of buffer
  fold = ' ',
  foldopen = '-',
  foldsep = ' ',
  foldclose = '+',
}
