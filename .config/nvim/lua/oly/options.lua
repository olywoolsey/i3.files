-- [[  options.lua ]] 
local options = {
    -- [[ line numbers ]]
    number = true,                  -- Adds line numbers
    relativenumber = true,          -- Sets line numbers to relative
    cursorline = true,              -- Highlight the current line in the buffer by changing its background color
    scrolloff = 4,                  -- Min num lines of context keep lines on screen around cursor
    
    -- [[ indents ]]
    expandtab = true,               -- Expand tab
    autoindent = true,              -- Indent lines
    tabstop = 4,                    -- Number of columns occupied by a tab
    softtabstop = 4,                -- Controls number of spaces entered when tab is pressed
    shiftwidth = 4,                 -- Works with tabstop and softtabstop
    
    -- [[ search ]]
    ignorecase = true,              -- Ignore case in search patterns
    smartcase = true,               -- Override ignorecase if search contains capitals
    incsearch = true,               -- Use incremental search
    hlsearch = false,               -- Highlight search matches
    wildmode = {'longest', 'list'}, -- Gives possible completions
    
    -- [[ Splits ]]
    splitright = true,              -- Place new window to right of current one
    splitbelow = true,              -- Place new window below the current one
   
    -- [[ Theme ]]
    syntax = "ON",                  -- Allow syntax highlighting
    termguicolors = true,           -- If term supports ui color then enable
    conceallevel = 0,                        -- so that `` is visible in markdown files
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd('filetype plugin on')          -- Allows loading of filetype-specific plugins
vim.cmd('filetype plugin indent on')   -- Allow autoindenting based on filetype
vim.cmd('syntax on')                   -- Enable syntax highlighting for the current buffer


