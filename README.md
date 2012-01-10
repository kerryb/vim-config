# Installation

If necessary, backup and remove your <tt>~/.vim</tt> directory and
<tt>~/.vimrc</tt> file.

Clone this repository to <tt>~/git</tt>:

    git clone git://github.com/kerryb/vim-config.git ~/.vim

(If you're behind a firewall that blocks port 9418, replace <tt>git:</tt> with
<tt>https:</tt> in the above URL.)

If you're on the BT intranet you can get it from here instead:

    git clone git://git.nat.bt.com/vim-config/vim-config.git ~/.vim

Alternatively, if for some bizarre reason you don't have git installed, you can
download a zip or tar file using the link on
[GitHub](http://github.com/kerryb/vim-config).

Finally, symlink <tt>.vimrc</tt>:

    ln -s ~/.vim/vimrc ~/.vimrc

## Keeping up-to-date

    cd ~/.vim
    git pull

Then in vim:

    :helptags ~/.vim/doc

## Local Customisation

Local changes (eg if you prefer a different font or colour scheme) can either
be made in a branch, or in <tt>~/.vimrc.local</tt>.

# Included Plugins

See the plugins' web pages for more information. The keybindings listed are mostly
just those defined or overridden locally, not the ones provided by default.

Plugins are installed in their own directories under <tt>bundle</tt>, thanks to
[Pathogen](http://www.vim.org/scripts/script.php?script_id=2332).

## Abolish (1.0)

Work with several variants of a word at once ([more](http://www.vim.org/scripts/script.php?script_id=1545))

## ack (0.3.1)

Plugin for the Perl module / CLI script 'ack' ([more](http://www.vim.org/scripts/script.php?script_id=2572))

## afterimage (2.1)

Edit PNG and GIF icons by converting them to XPM ([more](http://www.vim.org/scripts/script.php?script_id=1617))

## Align (35/41)

Help folks to align text, eqns, declarations, tables, etc ([more](http://www.vim.org/scripts/script.php?script_id=294))

*Keybindings*

<dl>
  <dt>,tlt</dt><dd>Align LaTEX tables (to avoid clashing with our existing ,tt mapping)</dd>
  <dt>,t&gt;</dt><dd>Align on =></dd>
</dl>

## bufexplorer (7.2.8)

Buffer explorer/browser ([more](http://www.vim.org/scripts/script.php?script_id=42))

*Keybindings*

<dl>
  <dt>,.</dt><dd>Show buffer explorer</dd>
</dl>

## Coffeescript (fd170cb - 13 June 2011)

Adds support for CoffeeScript. It handles syntax, indenting, and compiling ([more](http://www.vim.org/scripts/script.php?script_id=3590))

## Command-T (1.0b)

Fast file navigation for VIM ([more](http://www.vim.org/scripts/script.php?script_id=3025))

You need to build the code before you can use it:

    cd bundle/command-t/ruby/command-t
    ruby extconf.rb
    make

## Conque Shell (2.0)

Run interactive commands inside a Vim buffer ([more](http://www.vim.org/scripts/script.php?script_id=2771))

## css_color (0.7)

CSS color preview ([more](http://www.vim.org/scripts/script.php?script_id=2150))

## EasyGrep (0.98)

Fast and Easy Find and Replace Across Multiple Files ([more](http://www.vim.org/scripts/script.php?script_id=2438))

## endwise (1.0)

Wisely add "end" in ruby, endfunction/endif/more in vim script, etc ([more](http://www.vim.org/scripts/script.php?script_id=2386))

## Extradite (4602089 - 2 March 2011)

Brings up the commit log of the current file. In the log view ([more](http://int3.github.com/vim-extradite/))

*Keybindings*

<dl>
  <dt>,x</dt><dd>Open commit history for current file</dd>
</dl>

## Fugitive (1.2)

A Git wrapper so awesome, it should be illegal ([more](http://www.vim.org/scripts/script.php?script_id=2975))

## Gundo (2.2.2)

Gundo is a Vim plugin for visualizing your undo tree to make it usable ([more](http://www.vim.org/scripts/script.php?script_id=3304))

*Keybindings*

<dl>
  <dt>,u</dt><dd>Toggle Gundo tree</dd>
</dl>

## markdown

Syntax highlighting for Markdown ([more](http://plasticboy.com/markdown-vim-mode/))

## matchit (1.13.2)

Extended % matching for HTML, LaTeX, and many other languages ([more](http://www.vim.org/scripts/script.php?script_id=39))

## NERD_tree (4.1.0)

A tree explorer plugin for navigating the filesystem ([more](http://www.vim.org/scripts/script.php?script_id=1658))

*Keybindings*

<dl>
  <dt>,m</dt><dd>Show/hide NERDTree</dd>
  <dt>,f</dt><dd>Show current file in tree</dd>
</dl>

## nerdcommenter (2.3.0)

A plugin that allows for easy commenting of code for many filetypes ([more](http://www.vim.org/scripts/script.php?script_id=1218))

## ragtag (2.0)

A set of mappings for HTML, XML, PHP, ASP, eRuby, JSP, and more ([more](http://www.vim.org/scripts/script.php?script_id=1896))

If you have already typed 'foo', the following shortcuts apply (with the cursor position marked by ^):

<dl>
  <dt>&lt;C-X&gt;=</dt><dd>foo&lt;%= ^ %&gt;</dd>
  <dt>&lt;C-X&gt;+</dt><dd>&lt;%= foo^ %&gt;</dd>
  <dt>&lt;C-X&gt;-</dt><dd>foo&lt;% ^ %&gt;</dd>
  <dt>&lt;C-X&gt;_</dt><dd>&lt;% foo^ %&gt;</dd>
  <dt>&lt;C-X&gt;'</dt><dd>foo&lt;%# ^ %&gt;</dd>
  <dt>&lt;C-X&gt;"</dt><dd>&lt;%# foo^ %&gt;</dd>
  <dt>&lt;C-X&gt;&lt;Space&gt;</dt><dd>&lt;foo&gt;^&lt;/foo&gt;</dd>
  <dt>&lt;C-X&gt;&lt;CR&gt;</dt><dd>&lt;foo&gt;<br />^<br />&lt;/foo&gt;</dd>
  <dt>&lt;C-X&gt;/</dt><dd>Last HTML tag closed</dd>
  <dt>&lt;C-X&gt;!</dt><dd>&lt;!DOCTYPE...&gt;/&lt;?xml ...?&gt; (menu)</dd>
  <dt>&lt;C-X&gt;@</dt><dd>&lt;link rel="stylesheet" ...&gt;</dd>
  <dt>&lt;C-X&gt;#</dt><dd>&lt;meta http-equiv="Content-Type" ... /&gt; <em>ragtag-CTRL-X_#</em></dd>
  <dt>&lt;C-X&gt;$</dt><dd>&lt;script src="/javascripts/^.js"&gt;&lt;/script&gt; <em>ragtag-CTRL-X_$</em></dd>
</dl>

## rails (4.3)

Ruby on Rails: easy file navigation, enhanced syntax highlighting, and more ([more](http://www.vim.org/scripts/script.php?script_id=1567))

*Keybindings*

<dl>
  <dt>,r</dt><dd>run rake</dd>
</dl>

## rake (1.0)

It's like rails.vim without the rails ([more](http://www.vim.org/scripts/script.php?script_id=3669))

## repeat (1.0)

Use the repeat command (.) with supported plugins ([more](http://www.vim.org/scripts/script.php?script_id=2136))

## ruby (7bee8d0 - 8 August, 2011)

Ruby support (newer than the version released with vim). ([more](https://github.com/vim-ruby/vim-ruby))

## ruby debugger (6ce819c - July 11, 2011)

Ruby Debugger: supports running of specs and cucumber features from within vim ([more](http://github.com/astashov/vim-ruby-debugger))

NB. If upgrading this plugin, remember to change the default keybindings in plugin/ruby_debugger.vim

*Keybindings*

<dl>
  <dt>,dg</dt><dd>Start the Debugger</dd>
  <dt>,dr</dt><dd>Debug the current test (can be a spec or a cucumber feature)</dd>
  <dt>,db</dt><dd>Toggle breakpoint</dd>
  <dt>,dv</dt><dd>Show variables window</dd>
  <dt>,dm</dt><dd>Show breakpoints window</dd>
  <dt>,dt</dt><dd>Show frames window</dd>
  <dt>,ds</dt><dd>Step</dd>
  <dt>,df</dt><dd>Finish</dd>
  <dt>,dn</dt><dd>Next</dd>
  <dt>,dc</dt><dd>Continue</dd>
  <dt>,de</dt><dd>Exit</dd>
  <dt>,dd</dt><dd>Remove all breakpoints</dd>
</dl>

If you don't have 'spec' or 'cucumber' in your /usr/bin folder, because you're using RVM, you need to add the following lines to your vimrc.local:

    let g:ruby_debugger_spec_path = '$GEM_HOME/bin/spec'
    let g:ruby_debugger_cucumber_path = '$GEM_HOME/bin/cucumber'

## ruby_focused_unit_test (d00332 - August 08, 2010)

Run a focused ruby unit test in vi ([more](http://github.com/pgr0ss/ruby_focused_unit_test_vim))

*Keybindings*

<dl>
  <dt>,rb</dt><dd>Run entire test/spec</dd>
  <dt>,rf</dt><dd>Run focussed test/spec</dd>
  <dt>,rc</dt><dd>Run focussed contex (ie describe block)</dd>
</dl>

*Note:* May not work in RSpec 2.

## ruby-refactoring (abc8074 - 29 June 2010)

Refactoring tool for Ruby in vim! ([more](https://github.com/ecomba/vim-ruby-refactoring))

See [relish documentation](http://relishapp.com/despo/vim-ruby-refactoring) for examples.

## scala

Scala support ([more](http://www.3plus4.de/scala/))

## SimpleFold (1.5.0)

space-optimized, configurable folds, supports Ruby, Ocaml, Perl, PHP, Java... ([more](http://www.vim.org/scripts/script.php?script_id=1868))

*Keybindings*

<dl>
  <dt>,F</dt><dd>Fold</dd>
</dl>

Uses standard vim commands to open and close folds etc (:help fold)

## Slime

Run selected code in a screen session (irb etc) ([more](http://technotales.wordpress.com/2007/10/03/like-slime-for-vim/))

*Keybindings*

<dl>
  <dt>,x</dt><dd>Run current paragraph or selection in named screen session</dd>
  <dt>,xx</dt><dd>Set session/window name</dd>
</dl>

## specky (1.5)

Functions to help make behavioral testing easy with ruby and rspec ([more](http://www.vim.org/scripts/script.php?script_id=2286))

*Keybindings*

<dl>
  <dt>,ss</dt><dd>Run spec</dd>
  <dt>,sx</dt><dd>Switch between spec and implementation</dd>
  <dt>,s'</dt><dd>Cycle between single quotes, double quotes and symbol</dd>
</dl>

*Note:* Doesn't fully support RSpec 2.

## SuperTab (1.6)

Do all your insert-mode completion with Tab ([more](http://www.vim.org/scripts/script.php?script_id=1643))

## surround (1.90)

Delete/change/add parentheses/quotes/XML-tags/much more with ease ([more](http://www.vim.org/scripts/script.php?script_id=1697))

## syntastic (1.2.0)

Automatic syntax checking ([more](http://www.vim.org/scripts/script.php?script_id=2736))

## Tabular (b7b4d87 - 31 March 2011)

Configurable, flexible, intuitive text aligning ([more](http://github.com/godlygeek/tabular/blob/master/doc/Tabular.txt))

*Keybindings*

<dl>
  <dt>,tt</dt><dd>(when text is selected) format tables made with pipes (|)</dd>
</dl>

## unimpaired (1.1)

Pairs of handy bracket maps ([more](http://www.vim.org/scripts/script.php?script_id=1590))

## vim-bundler (3f1e6e9f, 22 Aug 2011)

Lightweight bag of Vim goodies for Bundler ([more](https://github.com/tpope/vim-bundler))

## ZoomWin (23)

Zoom in/out  of windows (toggle between one window and multi-window) ([more](http://www.vim.org/scripts/script.php?script_id=508))

*Keybindings*

<dl>
  <dt>,z</dt><dd>Zoom</dd>
</dl>

# Other Keybindings

<dl>
  <dt>ctrl-]</dt><dd>Jump to definition (requires [exuberant ctags](http://blog.tobiascrawley.net/2009/01/01/generating-a-tags-file-from-a-git-hook/))</dd>
  <dt>,c</dt><dd>Show/hide hidden characters</dd>
  <dt>,h</dt><dd>Hide search highlighting</dd>
  <dt>,rr</dt><dd>Run ruby file</dd>
  <dt>,,</dt><dd>Run rails spec file</dd>
  <dt>,rt</dt><dd>Run [run_tags](ubuntu: http://gist.github.com/186567, osx: https://gist.github.com/186567) script (assuming it's installed and in the path)</dd>
  <dt>,s</dt><dd>Show/hide spelling errors</dd>
  <dt>,sw</dt><dd>Strip trailing whitespace</dd>
  <dt>,w</dt><dd>Toggle word wrapping</dd>
  <dt>,p</dt><dd>Switch to 'projector mode' (large font, light colour scheme)</dd>
  <dt>RB</dt><dd>Open Ruby docs in browser for word under cursor</dd>
  <dt>RR</dt><dd>Open Rails docs in browser for word under cursor</dd>
</dl>

# Commands

<dl>
  <dt>:Lorem</dt><dd>Generate 'lorem ipsum' text</dd>
  <dt>:SudoW</dt><dd>Save using sudo (run <tt>sudo -v</tt> in terminal first)</dd>
</dl>

# Vim Resources

See my vim bookmarks on [pinboard](http://pinboard.in/u:kerryb/t:vim).
