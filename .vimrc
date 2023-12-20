set nocompatible
set number relativenumber
set so=999
set autoindent expandtab tabstop=4 shiftwidth=4
set mouse=a
set noswapfile
set ruler

let mapleader = " "
nnoremap <C-i> i_<Esc>r
nnoremap <C-a> a_<Esc>r
inoremap  jk <Esc>
inoremap  kj <Esc>

let &t_SI = "\e[6 q"  " blinking I-beam in insert mode
let &t_SR = "\e[4 q"  " blinking underline in replace mode
let &t_EI = "\e[2 q"  " default cursor (usually blinking block) otherwise

set ttimeout
set ttimeoutlen=1
set ttyfast

syntax enable

set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..)
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

set background=dark
