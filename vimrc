" Basic sanity
set nocompatible
filetype off

" Use vim-plug to manage plugins
call plug#begin('~/.vim/plugged')

" Language support
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rails'
Plug 'elixir-editors/vim-elixir'
Plug 'sirtaj/vim-openscad'
Plug 'neomake/neomake'
syntax on
let g:neomake_elixir_enabled_makers = ['credo']
autocmd! BufWritePost *.ex,*.exs Neomake

" Language server support
" Need to run :CocInstall coc-elixir (etc)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

autocmd BufWritePre *.ex,*.exs :call CocAction('format')

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nnoremap <silent> <leader>o :<C-u>CocList outline<CR>

nmap <leader>rn <Plug>(coc-rename)

command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" End of CoC config

" Fuzzy file finder
set rtp+=/usr/local/opt/fzf
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let $FZF_DEFAULT_OPTS = '--bind ctrl-a:select-all,ctrl-d:deselect-all'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
noremap <leader>f :Files<cr>
noremap <leader>b :Buffers<cr>

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

" Extended search & replace
Plug 'tpope/tpope-vim-abolish'

" open files at last position
Plug 'farmergreg/vim-lastplace'

" Test runner
Plug 'janko-m/vim-test'
Plug 'tpope/vim-dispatch'
nmap <silent> <leader>t :wa<cr>:TestFile<cr>
nmap <silent> <leader>T :wa<cr>:TestNearest<cr>
nmap <silent> <leader>a :wa<cr>:TestSuite<cr>
nmap <silent> <leader>l :wa<cr>:TestLast<cr>
nmap <silent> <leader>g :wa<cr>:TestVisit<cr>
let test#strategy = "vimterminal"

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
" Note: Elixir needs ~/.ctags from https://github.com/mmorearty/elixir-ctags
Plug 'ludovicchabant/vim-gutentags'
set tags=tags
let g:gutentags_project_root = ['mix.exs', 'Gemfile']
" Some extra config from https://www.reddit.com/r/vim/comments/d77t6j/
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_ctags_extra_args = ['--tag-relative=yes', '--fields=+ailmnS']
let g:gutentags_ctags_exclude = [
      \ '*.git', '*.svg', '*.hg', 'build', 'dist', 'bin', '_build', 'deps', 'node_modules', 'bower_components',
      \ 'cache', 'compiled', 'docs', 'example', 'bundle', 'vendor', '*.md', '*-lock.json', '*.lock', '*bundle*.js',
      \ '*build*.js', '.*rc*', '*.json', '*.min.*', '*.map', '*.bak', '*.zip', '*.pyc', '*.class', '*.sln',
      \ '*.Master', '*.csproj', '*.tmp', '*.csproj.user', '*.cache', '*.pdb', '*.beam', 'tags*', 'cscope.*',
      \ '*.css', '*.less', '*.scss', '*.exe', '*.dll', '*.mp3', '*.ogg', '*.flac', '*.swp', '*.swo',
      \ '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png', '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2',
      \ '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx'
      \ ]

" Colour schemes
Plug 'NLKNguyen/papercolor-theme'

let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.dark': {
  \       'override' : {
  \         'color01' : ['#d70000', '160'],
  \       }
  \     }
  \   }
  \ }

Plug 'morhetz/gruvbox'
Plug 'agude/vim-eldar'

" End of plugins
call plug#end()

" Appearance
set guifont=Source\ Code\ Pro\ Light:h10
set t_Co=256

" colorscheme PaperColor
" colorscheme eldar

autocmd vimenter * ++nested colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'

" Move the fullscreen toggle away from the escape key
anoremenu 1.1 TouchBar.-flexspace- <Nop>
tlnoremenu 1.1 TouchBar.-flexspace- <Nop>

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

" Make Y consistent with C and D
nnoremap Y y$

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
" <leader>C for <filename>:<current line>
nnoremap <leader>C :let @+ = expand("%") . ":" . line(".")<cr>
