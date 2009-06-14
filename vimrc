set nocompatible
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize
set guioptions-=T " no toolbar
set statusline=%<%f\ %h%m%r%=%-20.(line=%l,col=%c%V,totlin=%L%)\%h%m%r%=%-40(,%n%Y%)\%P
set laststatus=2  " Always show status line.
set number " line numbers

:let mapleader = ","

filetype plugin indent on " Enable filetype-specific indenting and plugins
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set sw=2  " Tabs under smart indent
set ai    " auto-indent

runtime! plugin/matchit.vim " extends % to do/end etc

colorscheme railscasts

nmap <silent> <Leader>p :NERDTreeToggle<CR>
