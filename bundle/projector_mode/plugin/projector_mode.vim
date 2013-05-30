" Projector Mode
"
" Use the 'ToggleProjectorMode' command to switch between your default
" colourscheme and a clearer projector colourscheme. Very useful for those of
" us who like dark themes and occasionally have to present in light rooms.
"
" Set the following in your vimrc to pick the themes to toggle between:
" g:default_colorscheme <default-colorscheme>
" g:projector_colorscheme <projector-colorscheme>
"
" You can bind this in your vimrc like this:
" noremap <silent> <leader>p :ToggleProjectorMode<CR>
"
" Thrown together by Adam Whittingham, 2013.
" Licensed under the WTFPL 2.0 (Do What the Fuck You Want to Public License)

let g:projector_scheme_name = ''
let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
let s:projector_font_size = 14

function! ToggleProjectorMode()
  if (g:colors_name != g:projector_scheme_name)
    exec "color ". g:projector_colorscheme
    let g:projector_scheme_name = g:colors_name
    let g:original_font = &guifont
    let &guifont = substitute(&guifont, s:pattern, '\1', ''). s:projector_font_size
  else
    exec "color ". g:default_colorscheme
    let &guifont = g:original_font
  endif
endfunction

command! ToggleProjectorMode :call ToggleProjectorMode()
