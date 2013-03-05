let g:projector_scheme_name = ''
let s:pattern = '^\(.* \)\([1-9][0-9]*\)$'
let s:projector_font_size = 16

function! ToggleProjectorMode()
  if (g:colors_name != g:projector_scheme_name)
    exec "color ". g:projector_colorscheme
    let g:projector_scheme_name = g:colors_name
  else
    exec "color ". g:default_colorscheme
  endif
endfunction

command! ToggleProjectorMode :call ToggleProjectorMode()
