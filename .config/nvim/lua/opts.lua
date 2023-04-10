-- [[  opts.lua ]] 
local opt = vim.opt

-- [[ line numbers ]]
opt.number = true                   -- Adds line numbers
opt.relativenumber = true           -- Sets line numbers to relative
opt.cursorline = true               -- Highlight the current line in the buffer by changing its background color
opt.scrolloff = 4                -- int:  Min num lines of context

-- [[ indents ]]
opt.expandtab = true                -- Expand tab
opt.autoindent = true               -- Indent lines
opt.tabstop = 4                     -- Number of columns occupied by a tab
opt.softtabstop = 4                 -- Controls number of spaces entered when tab is pressed
opt.shiftwidth = 4                  -- Works with tabstop and softtabstop

-- [[ search ]]
opt.ignorecase = true            -- bool: Ignore case in search patterns
opt.smartcase = true             -- bool: Override ignorecase if search contains capitals
opt.incsearch = true             -- bool: Use incremental search
opt.hlsearch = false             -- bool: Highlight search matches
opt.wildmode = {'longest', 'list'}  -- Gives possible completions

-- [[ Splits ]]
opt.splitright = true            -- bool: Place new window to right of current one
opt.splitbelow = true            -- bool: Place new window below the current one


-- [[ Theme ]]
opt.syntax = "ON"                -- str:  Allow syntax highlighting
opt.termguicolors = true         -- bool: If term supports ui color then enable

vim.cmd('filetype plugin on')          -- Allows loading of filetype-specific plugins
vim.cmd('filetype plugin indent on')   -- Allow autoindenting based on filetype
vim.cmd('syntax on')                   -- Enable syntax highlighting for the current buffer

