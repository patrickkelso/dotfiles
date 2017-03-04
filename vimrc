execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=2
set bg=dark
colorscheme desert
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
