" Basic sanity
set nocompatible
filetype off

" Use vim-plug to manage plugins
call plug#begin('~/.vim/plugged')

" Colours
Plug 'chriskempson/base16-vim'

" Language support
Plug 'sheerun/vim-polyglot'
syntax on

" Fuzzy file finder
Plug 'ctrlpvim/ctrlp.vim'
noremap <leader>f :CtrlPMixed<cr>

" Test runner
Plug 'janko-m/vim-test'
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Auto-insert closing end etc
Plug 'tpope/vim-endwise'

" Square-bracket mappings for various handy things
Plug 'tpope/vim-unimpaired'

" End of plugins
call plug#end()

" Appearance
:set guifont=Source\ Code\ Pro\ Light:h10
colorscheme base16-default-dark

" Use space as leader
map <Space> <Leader>
nnoremap <Leader>x i
set showcmd

