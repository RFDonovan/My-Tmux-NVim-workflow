call plug#begin('~/AppData/Local/nvim/autoload/plugged')
" Dashboard
Plug 'glepnir/dashboard-nvim'

" Conquer of completion
Plug 'neoclide/coc.nvim' , {'branch': 'release'}

Plug 'jiangmiao/auto-pairs'
Plug 'nvim-lua/plenary.nvim'
" status bar
Plug 'vim-airline/vim-airline'
" theme gruvbox :colorscheme gruvbox
Plug 'ellisonleao/gruvbox.nvim'
" search file :Telescope find_files
Plug 'nvim-telescope/telescope.nvim'
" Browse file & folder using :Telescope file_browser
Plug 'nvim-telescope/telescope-file-browser.nvim'

" nvim tree file explorer
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
" Lazygit integration
Plug 'kdheepak/lazygit.nvim'
" Floating explorer
Plug 'ptzz/lf.vim'
Plug 'voldikss/vim-floaterm'
" Bufferline
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' }
" Toggle comments
Plug 'numToStr/Comment.nvim'
" Hop motion
Plug 'phaazon/hop.nvim'

call plug#end()
