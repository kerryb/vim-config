autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,perl,tex set shiftwidth=2
 
autocmd FileType c,cpp,java,javascript,python,xml,xhtml,html set shiftwidth=2
 
augroup filetypedetect
  au! BufNewFile,BufRead *.ch setf cheat
  au BufNewFile,BufRead *.liquid setf liquid
  au! BufRead,BufNewFile *.haml setfiletype haml
  autocmd BufNewFile,BufRead *.yml setf eruby
augroup END
 
autocmd BufNewFile,BufRead *_test.rb source ~/.vim/ftplugin/shoulda.vim
"use \rci in normal mode to indent ruby code,should install kode ,sudo gem
"install kode
nmap <leader>rci :%!ruby-code-indenter<cr>
 
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
" Load matchit (% to bounce from do to end, etc.)
runtime! plugin/matchit.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
 
" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
 
" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'
 
set nocompatible          " We're running Vim, not Vi!
set guifont=Monaco:h13
set guitablabel=%M%t
set nobackup
set nowritebackup
set path=$PWD/public/**,$PWD/**
filetype plugin indent on " Enable filetype-specific indenting and plugins
set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize
set guioptions-=m
set statusline=%<%f\ %h%m%r%=%-20.(line=%l,col=%c%V,totlin=%L%)\%h%m%r%=%-40(,%n%Y%)\%P
set laststatus=2

map <C-q> :mksession! ~/.vim/.session <cr>
map <C-//> map ,# :s/^/#/<CR>
map <S-//> :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR><Esc>:nohlsearch<CR>
imap <M-Up> :tabn<CR>
imap <M-Down> :tabp<CR>
imap <c-s> <esc><c-s>

set guioptions-=T
if has("gui_running")
	"tell the term has 256 colors
	set t_Co=256
	colorscheme vibrantink
  set transparency=7
  set lines=40
  set columns=115
else
  let g:CSApprox_loaded = 0
endif

syntax on                 " Enable syntax highlighting
 
" Load matchit (% to bounce from do to end, etc.)
runtime! macros/matchit.vim
set nonumber
 
augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
augroup END

"make <c-l> clear the highlight as well as redraw
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>

"map to bufexplorer
nnoremap <C-B> :BufExplorer<cr>

"map to fuzzy finder text mate stylez
nnoremap <c-f> :FuzzyFinderTextMate<CR>

"map Q to something useful
noremap Q gq

"make Y consistent with C and D
nnoremap Y y$

map <leader>b :FuzzyFinderBuffer<CR>
map <leader>] :FuzzyFinderMruFile<CR>
map <leader>r :ruby finder.rescan!<CR>
map ,t :Rake<CR>

let g:proj_flags="imstg"
let g:fuzzy_ceiling=20000
let g:fuzzy_matching_limit=25
let g:fuzzy_ignore = "gems/*, log/*"
set cursorline

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

set wildmode=list:longest   "make cmdline tab completion similar to bash
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1

set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
" colorscheme vividchalk  " Uncomment this to set a default theme
 
" Formatting (some of these are for coding in C and C++)
set ts=2  " Tabs are 2 spaces
set bs=2  " Backspace over everything in insert mode
set shiftwidth=2  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab
 
" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
set list
" Show $ at end of line and trailing space as ~
set lcs=tab:\ \ ,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
 
" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes

"visual search mappings
function! s:VSetSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>


"jump to last cursor position when opening a file
"dont do it when writing a commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
    if &filetype !~ 'commit\c'
        if line("'\"") > 0 && line("'\"") <= line("$")
            exe "normal g`\""
        endif
    end
endfunction

"define :Lorem command to dump in a paragraph of lorem ipsum
command! -nargs=0 Lorem :normal iLorem ipsum dolor sit amet, consectetur
      \ adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore
      \ magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
      \ ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
      \ irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
      \ fugiat nulla pariatur.  Excepteur sint occaecat cupidatat non
      \ proident, sunt in culpa qui officia deserunt mollit anim id est
      \ laborum

"define :HighlightExcessColumns command to highlight the offending parts of
"lines that are "too long". where "too long" is defined by &textwidth or an
"arg passed to the command
command! -nargs=? HighlightExcessColumns call s:HighlightExcessColumns('<args>')
function! s:HighlightExcessColumns(width)
    let targetWidth = a:width != '' ? a:width : &textwidth
    if targetWidth > 0
        exec 'match Todo /\%>' . (targetWidth+1) . 'v/'
    else
        echomsg "HighlightExcessColumns: set a &textwidth, or pass one in"
    endif
endfunction

"simple template system
command! -complete=customlist,<SID>AvailableTemplates -n=1
            \ Template :call <SID>InsertTemplate('<args>')

function! <SID>InsertTemplate(name)
    "read in the template
    execute 'read ~/.vim/templates/' . &filetype . '/' . a:name

    "if the cursor was previously on a blank line, delete it
    if getline(line(".")-1) =~ '^\s*$'
        exec line(".")-1 . 'd'
    endif
endfunction

function! <SID>AvailableTemplates(lead, cmdline, cursorpos)
    let templateDir = expand('~/.vim/templates/' . &filetype . '/')
    let files = split(globpath(templateDir, a:lead . '*'), '\n')

    "chop off the templateDir from each file
    return map(files, 'strpart(v:val,strlen(templateDir))')
endfunction
