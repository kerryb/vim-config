" Allow the version of ruby used by syntastic to be overriden
" This is really useful if you're using JRuby, as the JVM takes
" 2 seconds to start up and that's really annoying if it happens
" every time you save a file
"
" To use MRI version 1.9.3-p392 you should do something like this
" in your bashrc (or equivalent):
"
" export SYNTASTIC_RUBY_VERSION_OVERRIDE=ruby-1.9.3-p392
let syntastic_ruby_version = $SYNTASTIC_RUBY_VERSION_OVERRIDE
if strlen(syntastic_ruby_version) > 0
  let g:syntastic_ruby_exec = syntastic_ruby_version
endif

