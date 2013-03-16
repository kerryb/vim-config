Projector Mode
==============

A basic vim plugin for those who like to share code on projectors once in a while.
Increases the font size and colorscheme to something easier to read, then toggles it back again.
Especially useful for people who like to work in dark colorschemes but have brightly lit offices!

Installation
------------
1. Clone this project into your pathogen bundle directory
    git clone git://github.com/AdamWhittingham/projector_mode.vim ~/.vim/bundle/

2. Define the following in your .vimrc, substituting your colorschemes of choice:
    let g:default_colorscheme = 'darkermate'
    let g:projector_colorscheme = 'mac-classic'

3. (Optional) Bind a key to ToggleProjectorMode in your .vimrc. For example, ``<leader>p``:
    noremap <silent> <leader>p :ToggleProjectorMode<CR>

4. Project your glorious code to your enthralled colleagues with impunity!
