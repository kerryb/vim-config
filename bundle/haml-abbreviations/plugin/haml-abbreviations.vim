function! s:haml_settings()
  iabbrev <buffer> span      %span
  iabbrev <buffer> div       %div

  iabbrev <buffer> h1        %h1
  iabbrev <buffer> h2        %h2
  iabbrev <buffer> h3        %h3
  iabbrev <buffer> h4        %h4
  iabbrev <buffer> h5        %h5
  iabbrev <buffer> h6        %h6
  iabbrev <buffer> p         %p

  iabbrev <buffer> ol        %ol
  iabbrev <buffer> ul        %ul
  iabbrev <buffer> li        %li
endfunction

autocmd FileType haml call <sid>haml_settings()
