source ~/AppData/Local/nvim/vim-plug/plugins.vim
imap jj <Esc>
" groovbox activation
set background=dark
colorscheme gruvbox
noremap <C-p> <cmd>Telescope find_files<cr>

" In your init.lua or init.vim
set termguicolors
lua << EOF
require("bufferline").setup{}
EOF
" cycle tabs
noremap <Tab> <cmd>BufferLineCycleNext<cr>
noremap <S-Tab> <cmd>BufferLineCyclePrev<cr>
" float terminal
noremap <A-j> <cmd>FloatermToggle<cr>
" Saving
map <C-s> <cmd>w<cr>
luafile ~/AppData/Local/nvim/custom_lua/custom_command.lua

luafile ~/AppData/Local/nvim/custom_lua/dashboard.lua
" Lazygit 
let mapleader = " "
nnoremap <silent> <leader>lg :LazyGit<CR>

" Hop
noremap z <cmd>HopWord<cr>
