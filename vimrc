" Things I'm still missing ...
"
" * Jump to previous file (was ,,)
" * Kump to alternate file (was :A)
" * Tab completion (is ^p/^n enough?)
" * Change surrounding
" * Clever substitution (was :S)

" Basic sanity
set nocompatible
filetype off

" Use vim-plug to manage plugins
call plug#begin('~/.vim/plugged')

" Colours
Plug 'chriskempson/base16-vim'

" Language support
" Polyglot seems to mess up auto-indent for elixir
Plug 'elixir-lang/vim-elixir'
let g:polyglot_disabled = ['elixir']
Plug 'sheerun/vim-polyglot'
syntax on

" Fuzzy file finder
Plug 'ctrlpvim/ctrlp.vim'
noremap <leader>f :CtrlP<cr>
noremap <leader>b :CtrlPBuffer<cr>
let g:ctrlp_user_command = 'ag %s --files-with-matches -g ""'
let g:ctrlp_use_caching = 0

" Make netrw act vaguely like nerdtree, but override trigger
Plug 'tpope/vim-vinegar'
" trigger with _ rather than break standard behaviour of -
autocmd VimEnter * nunmap -
nmap <leader>- <Plug>VinegarUp

" Ag for searching
Plug 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep'

" Test runner
Plug 'janko-m/vim-test'
nmap <silent> <leader>t :wa<cr>:TestFile<cr>
nmap <silent> <leader>T :wa<cr>:TestNearest<cr>
nmap <silent> <leader>a :wa<cr>:TestSuite<cr>
nmap <silent> <leader>l :wa<cr>:TestLast<cr>
nmap <silent> <leader>g :wa<cr>:TestVisit<cr>

" Auto-insert closing end etc
Plug 'tpope/vim-endwise'

" Square-bracket mappings for various handy things
Plug 'tpope/vim-unimpaired'

" Comment/uncomment code
Plug 'tpope/vim-commentary'

" End of plugins
call plug#end()

" Appearance
:set guifont=Source\ Code\ Pro\ Light:h10
set t_Co=256
colorscheme base16-default-dark

" 2 spaces; no tabs (as is right and proper)
:set ai sw=2 sts=2 et

" Searching and history
set ignorecase smartcase
set history=10000
set showmatch
set incsearch
set hlsearch

" Keep swapfiles out of working dir (but don't let them clobber each other)
:set directory=~/.vim/swapfiles//

" highlight current line
set cursorline

" Use space as leader
map <Space> <Leader>
nnoremap <Leader>x i
set showcmd

" Allow unsaved buffers
set hidden

" open files at last position
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g'\"" | endif
