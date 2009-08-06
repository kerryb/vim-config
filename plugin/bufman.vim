" File:         bufman.vim
" Author:       Gustavo Picon <tabo@slashcore.com>
" Version:      1.4
" Last Change:  2004 Jan 15
" Download:     http://slashcore.com/tabo/code/bufman.vim
" License:      This file is placed in the public domain
" Disclaimer:   Published as-is, no support, no warranty.
"
" Installation:
"     1. Read the Overview and Note sections of this file
"     2. If you need to, modify the settings in the Configuration section of
"        this file
"     3. Copy bufman.vim to your $HOME/.vim/plugin directory.
"        - Help about Vim global plugins: ':help add-global-plugin'
"        - Help about the dir locations: ':help runtimepath'
"     4. (Re)Start Vim
"
" Overview:
"     The porpuse of this plugin is to help the novice Vim user with a win32
"     background. One of the most frustrating issues with Vim for a new user
"     is to work with multiple files. There is a mswin.vim plugin that
"     somewhat solves this problem, but it's document switching is window
"     oriented, not buffer oriented, and if you are like me, you probably
"     have several buffers and a single window displayed in your Vim session.
"     This plugin will try to solve this problem. By default, it will map these
"     keys:
"     
"       #####################################################################
"       #      KEY       #  Enabled by  #           Description             #
"       #####################################################################
"       # F6             # s:map_next   # Go to the next buffer in the      #
"       # CTRL-TAB       #              # buffer list. Wraps around the end #
"       #                #              # of the buffer list.               #
"       #####################################################################
"       # F5             # s:map_prev   # Go to the previous buffer in the  #
"       # CTRL-SHIFT-TAB #              # buffer list. Wraps around the     #
"       #                #              # start of the buffer list.         #
"       #####################################################################
"       # F7             # s:map_close  # Unload the current buffer and     #
"       # CTRL-F4        #              # delete it from the buffer list.   #
"       #                #              # This won't work if the buffer was #
"       #                #              # changed. Any windows for the      #
"       #                #              # buffer are closed.                #
"       #####################################################################
"       # SHIFT-F1       # s:map_number # Go to the Nth buffer in the       #
"       # SHIFT-F2       #              # buffer list, where N is a number  #
"       # ...            #              # between 1 and 12.                 #
"       # ...            #              # Note that, for example, the 3rd   #
"       # ...            #              # buffer in the list isn't          #
"       # ...            #              # necessarily the buffer #3. Read   #
"       # SHIFT-F12      #              # ':help :buffers' for more info    #
"       #####################################################################
"
"     Each group of keys is enabled by a setting. You can modify these
"     settings in the Configuration section of this file.
"
"     Please note that the keys CTRL-TAB, CTRL-SHIFT-TAB and CTRL-F4 will only
"     work in gvim, not in normal Vim.
"
"
" Note:
"     By default bufman.vim will override two default mswin.vim mappings. In
"     case you don't know the (correct) Vim commands for those mappings:
" 
"       ######################################################
"       #  mswin.vim  #    Vim    #       Description        #
"       ######################################################
"       # CTRL-TAB    # CTRL-w w  # Move to the next window  #
"       ######################################################
"       # CTRL-F4     # CTRL-w c  # Close the current window #
"       ######################################################
"
"     If you want to keep the mswin.vim mappings, modify the Configuration
"     section of this file.

" these two lines are here to make sure we are loaded only once
if exists("loaded_bufman") | finish | endif
let loaded_bufman = 1

"
" Configuration:
"
" You can modify the next four lines in case you want a different key mapping.
" Comment a line if you don't want a specific mapping.
" For the first three settings, separate multiple mappings with spaces.
" For the last one, just put a mapping prefix for the 1-12 fkeys.
let s:map_next   = "<C-Tab>   <F6>"
let s:map_prev   = "<C-S-Tab> <F5>"
let s:map_close  = "<C-F4>    <F7>"
let s:map_number = "<S-F"
" set s:show_nonumberr to 1 if you want to see errors when you try to jump to
" a non-existant buffer with the CTRL-SHIFT-(number) combinations
let s:show_nonumberr = 0
" set s:max_numb to the higher fkey number to map with s:map_number
" default = 12 for a standard IBM-PC keyboard
let s:max_number = 12

"
" Code:
"     Don't edit anyhing below this point unless you know what you are doing.
"     Send your hacks to tabo@slashcore.com




" bufman_mapkey(keyseq, parms)
"     map a key sequence, and map it everywhere
function <SID>bufman_mapkey(keyseq, parms)
    if strlen(a:keyseq) > 0 && strlen(a:parms) > 0
        execute "noremap  <silent> ".a:keyseq."      ".a:parms
        execute "inoremap <silent> ".a:keyseq." <C-O>".a:parms
        execute "cnoremap <silent> ".a:keyseq." <C-C>".a:parms
    endif
endfunction


" bufman_close()
"     unload the current buffer
function <SID>bufman_close()
    try
        execute ":bdelete"
    catch
        echoerr "Couldn't close buffer (:bd! to force)"
    endtry
endfunction

" bufman_number(nb)
"     go to the Nth buffer in the list
function <SID>bufman_number(nb)
    let i = 1
    let q = 0
    while i <= bufnr('$') && q <= a:nb
        if bufexists(i) && buflisted(i)
            let q = q + 1
            if a:nb == q
                try
                    execute ":buffer! ".i
                catch
                    echoerr "Couldn't switch to the ".<SID>bufman_ord(a:nb)
                                \." buffer."
                endtry
                return
            endif
        endif
        let i = i + 1
    endwhile
    if s:show_nonumberr
        echoerr "There is no ".<SID>bufman_ord(a:nb)." buffer."
    endif
endfunction

" bufman_ord(n)
"     nothing to see here...
function <SID>bufman_ord(n)
    if a:n == 1
        let foo = "st"
    elseif a:n == 2
        let foo = "nd"
    elseif a:n == 3
        let foo = "rd"
    else
        let foo = "th"
    endif
    return a:n.foo
endfunction

" bufman_iterkeys(keys, parms)
"     find all space-separated keys and send them to bufman_mapkey
function <SID>bufman_iterkeys(keys, parms)
    let s = a:keys
    let t = ""
    while 1
        let pos = stridx(s, " ")
        if pos == -1
            break
        endif
        let t = strpart(s, 0, pos)
        let s = strpart(s, pos+1)
        call <SID>bufman_mapkey(t, a:parms)
    endwhile
    call <SID>bufman_mapkey(s, a:parms)
endfunction


" mappings
if exists("s:map_next")
    call <SID>bufman_iterkeys(s:map_next, ":execute \":bnext!\"<CR>")
endif
if exists("s:map_prev")
    call <SID>bufman_iterkeys(s:map_prev, ":execute \":bprevious!\"<CR>")
endif
if exists("s:map_close")
    call <SID>bufman_iterkeys(s:map_close, ":call <SID>bufman_close()<CR>")
endif
if exists("s:map_number")
    let i = 1
    while i <= s:max_number
        call <SID>bufman_mapkey(s:map_number.i.">",
                    \ ":call <SID>bufman_number(".i.")<CR>")
        let i = i + 1
    endwhile
    unlet i
endif

" we may have cheap memory now, but still, a byte is a byte
unlet s:map_next s:map_prev s:map_close s:map_number
delfunction <SID>bufman_mapkey
delfunction <SID>bufman_iterkeys

" vim: set sw=4 ts=8 sts=0 et tw=78 nofen fdm=indent ft=vim : 

