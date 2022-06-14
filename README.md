# My custom Tmux-NVim config & workflow

## Description

Over time, the though of reusing Vim hits me again. It is a blessing to see people sharing their workflow all over the internet.
(shall I mention [this guy](https://www.youtube.com/watch?v=sSOfr2MtRU8) in particular who inspired me so much :) ).

And so, I found interesting to document my journey with these two amazing tools.

I'll update & adapt the document as I learn and adopt new things from here and there



## My environment

I am using **Pop-Os 22.04** , a distro based on Ubuntu so all the confs are very similar to Ubuntu's (`deb` and  `apt` is life! Screw you Arch users!!!)

(PS: I still try to figure out a way to run `tmux` on Windows)

## Installation

### Tmux

```shell
sudo apt install tmux
```

Et voilà!

### NeoVim

For **NeoVim**, I build from source but we can also install via `sudo apt install nvim`.

Or build it from the repo:

```shell
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```

## Configuration

Here comes the fun part!

### Tmux

**Tmux** conf is very straightforward, we just need to create and edit the file `~/.tmux.conf`

```shell
#to be able to switch from pane to pane using vim-like direction,
#we are binding the following key                            
bind -r k select-pane -U                                            
bind -r j select-pane -D                                            
bind -r h select-pane -L                                            
bind -r l select-pane -R
                                            
#moving window by shift+ctrl+arrow                                  
bind-key -n C-S-Left swap-window -t -1                              
bind-key -n C-S-Right swap-window -t +1 
```

#### Create fast custom Workspace

To create fast workspace, I *stole* someone's script and made it my own (God forgive the sinner) .

1- Create a file named `create_panes.sh` with the following lines:

```bash
#!/bin/bash
tmux split-window -v -p 30                                          │                                                          │
tmux split-window -h -p 66                                          │                                                          │
tmux split-window -h -p 50
```

2- Add execution permission to it : `chmod +x create_panes.sh`

3- Run the `tmux` command

4- From the tmux *created window*, run `./create_panes.sh` 

#### Tmux **go-to** commands

Here are a list of the most used. (CTRL+b must precede all the command below)

| Command     | Description                                    |
|:-----------:|:----------------------------------------------:|
| ?           | obviously HELP!                                |
| c           | add new window                                 |
| ,           | rename window                                  |
| w           | list/select from all window                    |
| arrows      | switch pane (default)                          |
| Ctrl+arrows | resize selected pane                           |
| z           | Zoom in/out pane                               |
| p           | switch to previous window                      |
| n           | switch to next window                          |
| d           | detach current client (/!\ this one is funny!) |
| &           | kill current window                            |
| %           | split window horizontally                      |
| "           | split window vertically                        |

If the client is detached you can find and reattach it again using the following command

```shell
# list all session
tmux ls 
##should give something like :
## 0: 4 windows (created Tue Jun 14 20:51:57 2022)

# then reattach the session using the ID or session-name (first letter)
# the id is 0 here in the example)
tmux attach-session -t 0
```

A useful command that I don't use for creating session is:

```shell
tmux new -s [session_name_or_id]
```

### Nvim

Nvim is Vim but also Nvim is not Vim.

Config is not in `.vimrc` for NeoVim. We have to create a dedicated folder for that and put a file named `init.vim`

```shell
mkdir ~/.config/nvim
touch ~/.config/init.vim
```

Shall we add few lines to `~/.config/init.vim` in order to **make `nvim` great again**?

```vim
" show line number
set number
" from insert mode, when typing 'jj', shall we escape
imap jj <Esc>
```

#### Plugin installation

#### nvim go-to commands

| Command       | Descr                    |
| ------------- | ------------------------ |
| :split        | split horizontally       |
| :vsplit       | split vertically         |
| ctrl-w+ctrl-w | switch from pane to pane |
| :ter[minal]   | obvious right            |

#### Vim-Plug

`vim-plug` is a plugin manager.

I didn't use the official github readme, instead, I used this https://www.chiarulli.me/Neovim/01-vim-plug/

```shell
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir ~/.config/nvim/vim-plug

touch ~/.config/nvim/vim-plug/plugins.vim
```

Add the plugins from here `~/.config/nvim/vim-plug/plugins.vim`

```vim
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
    " Plugin 'vim-airline/vim-airline-themes'
    " GruvBox -> launch :colorscheme gruvbox after
    Plug 'morhetz/gruvbox'
    " Awesome find tool
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    " git 
    Plug 'tpope/vim-fugitive'

call plug#end()
```

Then add the file to my `~/.config/nvim/init.vim`

```vim
source $HOME/.config/nvim/vim-plug/plugins.vim
" activate gruvbox theme
colorscheme gruvbox
" git branch on vim-airline
let g:airline#extensions#branch#enabled = 1
```

Once done, we can go to `nvim` and play with the commands

`:PlugStatus`,`:PlugInstall`..., just use `Plug<Tab>` to autocomplete


