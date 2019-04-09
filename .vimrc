color desert
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number

" Downloads vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" VIM-PLUG
" https://github.com/junegunn/vim-plug
" Run ':PlugInstall' after adding a new plugin
" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" fzf
" adds useful commands which can be run from vim
" https://github.com/junegunn/fzf.vim
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" lightline.vim
" A light and configurable statusline/tabline plugin for vim
" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'

" flake8 pyton linter for vim
" https://github.com/nvie/vim-flake8.git
Plug 'https://github.com/nvie/vim-flake8.git'

" Initialize plugin system
call plug#end()

" lightline configuration
" Need to change colors in Terminator:
" http://www.forshee.me/2016/05/26/fixing-256-color-support-in-tmux-with-terminator.html
set laststatus=2
