set nocompatible
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize
set guioptions-=T " no toolbar
set statusline=%<%f\ %h%m%r%=%-20.(line=%l,col=%c%V,totlin=%L%)\%h%m%r%=%-40(,%n%Y%)\%P
set laststatus=2  " Always show status line.
set number " line numbers
set hlsearch " highlight search matches

:let mapleader = ","

filetype plugin indent on " Enable filetype-specific indenting and plugins

set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set backspace=start,indent
autocmd FileType make     set noexpandtab

runtime! plugin/matchit.vim " extends % to do/end etc

colorscheme railscasts

nmap <silent> <Leader>p :NERDTreeToggle<CR>
