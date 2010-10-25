set nocompatible
call pathogen#runtime_append_all_bundles()
syntax on
filetype off
filetype plugin indent on

set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize
set guioptions-=T " no toolbar
set statusline=%<%f\ %h%m%r%=%-20.(line=%l,col=%c%V,totlin=%L%)\%h%m%r%=%-40(,%n%Y%)\%P%#warningmsg#%{SyntasticStatuslineFlag()}%*
set laststatus=2  " Always show status line.
set number " line numbers
set scrolloff=3 " More context around cursor
set hlsearch  " highlight search matches...
set incsearch " ...as you type
set ignorecase
set smartcase
set hidden " Allow buffer switching without saving
set history=1000
set wildmode=list:longest " Shell-like behaviour for command autocompletion
set visualbell
set mousehide
set cf  " Enable error files & error jumping.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nowrap  " Line wrapping off
set timeoutlen=500
let mapleader = ","

filetype plugin indent on " Enable filetype-specific indenting and plugins

set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab
set backspace=start,indent,eol
autocmd FileType make     set noexpandtab

runtime! plugin/matchit.vim " extends % to do/end etc

if has('gui')
  colorscheme railscasts
  source ~/.vim/ruby_debugger/ruby_debugger.vim
  if has("mac")
    let g:ruby_debugger_progname = 'mvim'
  else
    let g:ruby_debugger_progname = 'gvim'
  endif
  map <Leader>dg :Rdebugger<CR>
  map <Leader>dr :RdbTest<CR>
endif

if $COLORTERM == 'gnome-terminal'
  set term=xterm-color
  set guifont=DejaVu\ Sans\ Mono\ 10
else
  set guifont=Menlo:h10
endif

" ,s to show trailing whitespace
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" Highlight trailing whitespace
highlight RedundantSpaces term=standout ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t/ "\ze sets end of match so only spaces highlighted

" ,h to toggle search result highlighting
:noremap <silent> <leader>h :set hls!<CR>

" ,w to toggle line wrap
:map <silent> <Leader>w :set wrap!<CR>

" ,f to find current file in NERDTree
map <silent> <Leader>f :call FindInNERDTree()<CR>

map <Leader>r :Rake<CR>
map <silent> <Leader>rb :wa<CR>:RunAllRubyTests<CR>
map <silent> <Leader>rc :wa<CR>:RunRubyFocusedContext<CR>
map <silent> <Leader>rf :wa<CR>:RunRubyFocusedUnitTest<CR>

map <silent> <Leader>rr :wa<CR>:rubyf %<CR>

let g:speckyQuoteSwitcherKey = "<Leader>s'"
let g:speckySpecSwitcherKey = "<Leader>sx"
let g:speckyRunSpecKey = "<Leader>ss"
let g:speckyWindowType = 1

let g:ragtag_global_maps = 1

nmap <silent> <Leader>m :NERDTreeToggle<CR>
nmap <silent> <unique> <Leader>. :BufExplorer<CR>

" Tabular
vnoremap <silent> <Leader>tt :call Tabularize('/\|/')<CR>

" Folding settings
set foldmethod=indent "fold based on indent
set foldnestmax=3     "deepest fold is 3 levels
set nofoldenable      "dont fold by default

" Jump to last cursor position when opening a file
" Don't do it when writing a commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
  if &filetype !~ 'commit\c'
    if line("'\"") > 0 && line("'\"") <= line("$")
      exe "normal g`\""
    endif
  end
endfunction

" make Y consistent with C and D
nnoremap Y y$

" strip trailing whitespace
"autocmd BufWritePre,FileWritePre * call StripTrailingWhitespace()
function! StripTrailingWhitespace()
	normal mz
	normal Hmy
	exec '%s/\s*$//g'
	normal 'yz<cr>
	normal `z
endfunction
nmap <silent> <Leader>sw :call StripTrailingWhitespace()<CR>

let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

" Alternatives to ESC: *******************************************************
imap jkl <ESC>
imap jlk <ESC>
imap kjl <ESC>
imap klj <ESC>
imap lkj <ESC>
imap ljk <ESC>
imap ;l <ESC>

"define :Lorem command to dump in a paragraph of lorem ipsum
command! -nargs=0 Lorem :normal iLorem ipsum dolor sit amet, consectetur
      \ adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore
      \ magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
      \ ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
      \ irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
      \ fugiat nulla pariatur.  Excepteur sint occaecat cupidatat non
      \ proident, sunt in culpa qui officia deserunt mollit anim id est
      \ laborum

function! OpenInBrowser(url)
  if has("mac")
    exec '!open '.a:url
  else
    exec '!firefox -new-tab '.a:url.' &'
  endif
endfunction

" Open the Ruby ApiDock page for the word under cursor
function! OpenRubyDoc(keyword)
  let url = 'http://apidock.com/ruby/'.a:keyword
  call OpenInBrowser(url)
endfunction
noremap RB :call OpenRubyDoc(expand('<cword>'))<CR>

" Open the Rails ApiDock page for the word under cursor
function! OpenRailsDoc(keyword)
  let url = 'http://apidock.com/rails/'.a:keyword
  call OpenInBrowser(url)
endfunction
noremap RR :call OpenRailsDoc(expand('<cword>'))<CR>

" :SudoW to save file using sudo (must be already authorised, eg sudo -v)
command! -bar -nargs=0 SudoW   :silent exe "write !sudo tee % >/dev/null"|silent edit!

" Edit routes
command! Rroutes :Redit config/routes.rb
command! RTroutes :RTedit config/routes.rb

" bracket completion routines
" not enabled by default - to enable put "call EnableBracketCompletion()" in
" vimrc.local
function! EnableBracketCompletion()
  inoremap {      {}<Left>
  inoremap {<CR>  {<CR>}<Esc>O
  inoremap {{     {
  inoremap {}     {}
  inoremap (      ()<Left>
  inoremap (<CR>  (<CR>)<Esc>O
  inoremap ((     (
  inoremap ()     ()
  inoremap [      []<Left>
  inoremap [<CR>  [<CR>]<Esc>O
  inoremap [[     [
  inoremap []     []
  inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
endfunction

function! DisableBracketCompletion()
  iunmap {
  iunmap {<CR>
  iunmap {{
  iunmap {}
  iunmap (
  iunmap (<CR>
  iunmap ((
  iunmap ()
  iunmap [
  iunmap [<CR>
  iunmap [[
  iunmap []
  iunmap <expr> )
endfunction

" Source a local configuration file if available.
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

