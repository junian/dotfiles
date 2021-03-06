set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NERDtree to display file explorer
Plugin 'scrooloose/nerdtree'

" goyo to enter distraction free mode
Plugin 'junegunn/goyo.vim'

" limelight to focus line when writing
Plugin 'junegunn/limelight.vim'

" YCM for auto-complete
" Plugin 'Valloric/YouCompleteMe'

" vim-airline status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" vim-colorschemes
Plugin 'flazz/vim-colorschemes'

" gohugo
Plugin 'robertbasic/vim-hugo-helper'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" set tabstop=4                 " number of visual spaces per TAB
" set softtabstop=4             " number of spaces in tab when editing
" set expandtab                 " tabs are spaces

set number                      " show line numbers
syntax enable                   " enable syntax processing
set cursorline                  " highlight current line

" NERDTree config
let NERDTreeShowHidden=1	" show hidden dotfiles

" vim-airline config
let g:airline_theme='luna'

" colorscheme config
colorscheme zenburn

" enable mouse support
:set mouse=a

