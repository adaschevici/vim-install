"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

set shell=/bin/zsh

" Set runtime path
""set rtp+=$HOME/.config/nvim/dein/repos/github.com/Shougo/dein.vim
set rtp+=$HOME/.fzf

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"
let g:python3_host_prog=expand('~/.pyenv/shims/python3.7')
let g:python2_host_prog=expand('~/.pyenv/shims/python2.7')


call plug#begin('~/.config/nvim/plugged')
  " Plugins
  " Base plugins
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-sensible'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'terryma/vim-multiple-cursors'
  Plug 'tpope/vim-unimpaired'
  Plug 'AndrewRadev/linediff.vim'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
  Plug 'junegunn/fzf.vim'
  Plug 'Shougo/deoplete.nvim'

  " Theme and UI plugins
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'ryanoasis/vim-devicons'

  " Git related plugins
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'mhinz/vim-signify'
  Plug 'Xuyuanp/nerdtree-git-plugin'

  " General language syntax plugins
  ""Plug 'vim-syntastic/syntastic'
  Plug 'w0rp/ale'

  " Snippet plugins
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'epilande/vim-react-snippets'

  " Language specific plugins
  " Syntax plugins
  Plug 'fatih/vim-go'
  Plug 'jimenezrick/vimerl'
  Plug 'rust-lang/rust.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'derekwyatt/vim-scala'
  Plug 'chrisbra/csv.vim'
  Plug 'leafgarland/typescript-vim'
  Plug 'elixir-editors/vim-elixir'
  Plug 'dag/vim-fish'
  Plug 'ekalinin/Dockerfile.vim'

  " Prettyfiers
  Plug 'maksimr/vim-jsbeautify'
  Plug 'jasonshell/vim-svg-indent'
  " Productivity & debug tools
  " "Plug 'jremmen/vim-ripgrep'
  Plug 'mattn/emmet-vim'
  Plug 'racer-rust/vim-racer'
  Plug 'nvie/vim-flake8'

" Required:
call plug#end()

"" configures plugin manager and plugins
source ~/.vim/base.vim
source ~/.vim/plugins.vim
