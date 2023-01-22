set number
imap jj <Esc>

source $HOME/.config/nvim/vim-plug/plugins.vim
let ayucolor="dark"
colorscheme ayu
" git branch on vim-airline
let g:airline#extensions#branch#enabled = 1
" Telescope shortcut
noremap <C-p> <cmd>Telescope<space>find_files<cr>
noremap , <cmd>HopWord<cr>
luafile $HOME/.config/nvim/config.lua
