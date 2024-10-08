set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vim-plug
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'kblin/vim-fountain'
call plug#end()

" scripts on GitHub repos
" Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Plugin 'FuzzyFinder'
" scripts not on GitHub
Plugin 'sickill/vim-monokai'
Plugin 'kien/ctrlp.vim'
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

filetype plugin indent on " required

" Make indentations 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
set mouse=a

" Show cursor position all the time
set ruler

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

Plugin 'preservim/nerdtree'

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if &buftype != 'quickfix' && getcmdwintype() == '' | silent NERDTreeMirror | endif

" Set background color to white
set t_Co=256

" Color scheme
syntax enable
colorscheme monokai
highlight NonText guibg=#060606
highlight Folded  guibg=#0A0A0A guifg=#9090D0

" Numbers
set number
set numberwidth=5

" Soft tabs
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set clipboard=unnamed

" Markdown support
au BufRead,BufNewFile *.md set filetype=markdown

" Better git commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

call vundle#end()
