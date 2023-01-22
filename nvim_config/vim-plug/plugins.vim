" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Airline
    Plug 'vim-airline/vim-airline'
    " Hop
    Plug 'phaazon/hop.nvim'
    " Ayu theme
    Plug 'ayu-theme/ayu-vim'
    " Gruvbox theme
    " Plug 'morhetz/gruvbox'
    " Telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    " lazygit
    Plug 'kdheepak/lazygit.nvim'
    " comment
    Plug 'numToStr/comment.nvim'
    " Use release branch (recommend)
	" Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
