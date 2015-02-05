set nocompatible

set number
set backspace=indent,eol,start
set history=1000
set showcmd
set showmode
set showmatch
set visualbell
set autoread
set hidden

syntax on

set incsearch
set hlsearch
set noswapfile
set nobackup
set nowb

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype plugin on
filetype indent on

set nowrap

set foldmethod=indent
set foldnestmax=3
set nofoldenable

set laststatus=2

set list
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
if !has('win32') && (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8')
    let &listchars = "tab:\u00B7 ,trail:\u22C5,extends:\u21c9,precedes:\u21c7,nbsp:\u00B7"
endif

set statusline=%F\ %m(%{strlen(&fenc)?&fenc:&enc})%=%lL/%P

set term=xterm-256color

set t_Co=88
set background=dark
colo solarized
let g:solarized_term_colors=256

let &t_SI .= "\<Esc>[5 q"
let &t_EI .= "\<Esc>[0 q"

execute pathogen#infect()

au! FileType python setl nosmartindent

