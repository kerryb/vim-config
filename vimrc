" Basic sanity
set nocompatible
filetype off

" Use vim-plug to manage plugins
call plug#begin('~/.vim/plugged')

" Language support
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'
let g:mix_format_on_save = 1
Plug 'sirtaj/vim-openscad'
syntax on

" Fuzzy file finder
Plug 'ctrlpvim/ctrlp.vim'
noremap <leader>f :CtrlP<cr>
noremap <leader>b :CtrlPBuffer<cr>
let g:ctrlp_user_command = 'ag %s --files-with-matches -g ""'
let g:ctrlp_use_caching = 0

" File explorer (tried netrw and vim-vinegar, but didn't quite cut it)
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
nmap <silent> <Leader>m :NERDTreeToggle<CR>
nmap <silent> <Leader>- :NERDTreeToggle<CR>
map <silent> <Leader>M :NERDTreeFind<CR>
map <silent> <Leader>= :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

" Git status annotations
Plug 'airblade/vim-gitgutter'
set updatetime=100

" Ag for searching
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

" Extended search & replace
Plug 'tpope/tpope-vim-abolish'

" Multipurpose tab key (from Gary Bernhardt)
" Indent if we're at the beginning of a line. Else, do completion.
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>

" Test runner
Plug 'janko-m/vim-test'
nmap <silent> <leader>t :wa<cr>:TestFile<cr>
nmap <silent> <leader>T :wa<cr>:TestNearest<cr>
nmap <silent> <leader>a :wa<cr>:TestSuite<cr>
nmap <silent> <leader>l :wa<cr>:TestLast<cr>
nmap <silent> <leader>g :wa<cr>:TestVisit<cr>

" Jump between test and implementation with :A
Plug 'tpope/vim-projectionist'
Plug 'andyl/vim-projectionist-elixir'

" Auto-insert closing end etc
Plug 'tpope/vim-endwise'

" HTML/XML mappings
Plug 'tpope/vim-ragtag'
let g:ragtag_global_maps = 1

" Square-bracket mappings for various handy things
Plug 'tpope/vim-unimpaired'

" Change surrounding parens etc
Plug 'tpope/vim-surround'

" Flexible searching
Plug 'tpope/vim-abolish'

" Comment/uncomment code
Plug 'tpope/vim-commentary'

" Make . work properly with plugin maps
Plug 'tpope/vim-repeat'

" Automatically generate ctags files
Plug 'ludovicchabant/vim-gutentags'
set tags=tags

" Colour scheme
Plug 'NLKNguyen/papercolor-theme'

" End of plugins
call plug#end()

" Appearance
set guifont=Source\ Code\ Pro\ Light:h10
set t_Co=256
colorscheme PaperColor

" Line numbers
set number

" 2 spaces; no tabs (as is right and proper)
set ai sw=2 sts=2 et

" Searching and history
set ignorecase smartcase
set history=10000
set showmatch
set incsearch
set hlsearch
" Hide search results
map <Leader>h :noh<CR>

" Keep swapfiles out of working dir (but don't let them clobber each other)
set directory=~/.vim/swapfiles//

" highlight current line
set cursorline

" Keep a few lines visible above or below cursor
set scrolloff=5
" Use space as leader
map <Space> <Leader>
nnoremap <Leader>x i
set showcmd

" Allow unsaved buffers
set hidden

" open files at last position
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") && &filetype != "gitcommit"
  \| exe "normal! g'\"" | endif

" Use alt to jump to alternate file on <leader>.
" Needs alt installed: https://github.com/uptech/alt
function! AltCommand(path, vim_command)
  let l:alternate = system("alt " . a:path)
  if empty(l:alternate)
    echo "No alternate file for " . a:path . " exists!"
  else
    exec a:vim_command . " " . l:alternate
  endif
endfunction
nnoremap <leader>. :w<cr>:call AltCommand(expand('%'), ':e')<cr>

" Jump to previous buffer with <leader>,
nnoremap <leader>, :b#<cr>

" Regenerate tags with <leader>rt
nnoremap <leader>rt :!ctags -R<cr>

" Strip trailing whitespace with <leader>sw
:nnoremap <Leader>sw :let _save_pos=getpos(".") <Bar>
    \ :let _s=@/ <Bar>
    \ :%s/\s\+$//e <Bar>
    \ :let @/=_s <Bar>
    \ :nohl <Bar>
    \ :unlet _s<Bar>
    \ :call setpos('.', _save_pos)<Bar>
    \ :unlet _save_pos<CR><CR>

" TODO: make these two filetype-dependent, and use the same key
" Fire up Pry with current file loaded with <leader>r
nnoremap <leader>r :w<cr>:!pry -r ./%<cr>
" Fire up Iex with current file loaded with <leader>e
nnoremap <leader>e :w<cr>:!iex -r %<cr>
" Run fast isolated test (don't load applications)
nnoremap <leader>n :wa<cr>:!mix test --no-start --no-color %<cr>

" Copy the current file path with <leader>c
nnoremap <leader>c :let @+ = expand("%")<cr>
