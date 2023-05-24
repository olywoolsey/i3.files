function Sad(line_nr, from, to, fname)
  vim.cmd(string.format("silent !sed -i '%ss/%s/%s/' %s", line_nr, from, to, fname)) 
end

function IncreasePadding() 
  Sad('07', 0, 20, '~/dotfiles/alacritty/alacritty.windows.yml')
  Sad('08', 0, 20, '~/dotfiles/alacritty/alacritty.windows.yml')
end

function DecreasePadding()
  Sad('07', 20, 0, '~/dotfiles/alacritty/alacritty.windows.yml')
  Sad('08', 20, 0, '~/dotfiles/alacritty/alacritty.windows.yml')
end

vim.cmd[[
  augroup ChangeAlacrittyPadding
   au! 
   au VimEnter * lua DecreasePadding()
   au VimLeavePre * lua IncreasePadding()
  augroup END 
]]
require('oly.cmp')
require('oly.colorscheme')
require('oly.lualine')
require('oly.maps')
require('oly.options')
require('oly.plugins')
require('oly.treesitter')
require('oly.vars')
require('oly.tabby')
require('oly.tablines')
