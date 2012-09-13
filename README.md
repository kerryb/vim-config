This is a tweaked copy of the excellent Vi/Vim dev setup [Kerryb](https://github.com/kerryb/vim-config)

# Installation

If necessary, backup and remove your <tt>~/.vim</tt> directory and <tt>~/.vimrc</tt> file:

    mv $HOME/.vim{,.original-$(date +%Y.%m.%d-%H.%M.%S)}
    mv $HOME/.vimrc{,.original-$(date +%Y.%m.%d-%H.%M.%S)}

Clone this repository to <tt>~/git</tt>:

    git clone git://github.com/adamwhittingham/vim-config.git ~/.vim

(If you're behind a firewall that blocks port 9418, replace <tt>git:</tt> with
<tt>https:</tt> in the above URL.)

Alternatively, if for some bizarre reason you don't have git installed, you can
download a zip or tar file using the link on
[GitHub](http://github.com/adamwhittingham/vim-config).

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

## Gundo (2.2.2)

Gundo is a Vim plugin for visualizing your undo tree to make it usable ([more](http://www.vim.org/scripts/script.php?script_id=3304))

*Keybindings*

<dl>
  <dt>,u</dt><dd>Toggle Gundo tree</dd>
</dl>

## HTML5

Adds support for HTML 5 keyword highlightings ([more](https://gist.github.com/256840))

## markdown

Syntax highlighting for Markdown ([more](http://plasticboy.com/markdown-vim-mode/))

## nerdtree (4.2.0)

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

## ruby (b10adca - 17 Aug 2012)

Ruby support (newer than the version released with vim). ([more](https://github.com/vim-ruby/vim-ruby))

## ruby-refactoring (6447a4d - 28 Dec 2011)

Refactoring tool for Ruby in vim! ([more](https://github.com/ecomba/vim-ruby-refactoring))

See [relish documentation](http://relishapp.com/despo/vim-ruby-refactoring) for examples.

## SimpleFold (1.5.0)

space-optimized, configurable folds, supports Ruby, Ocaml, Perl, PHP, Java... ([more](http://www.vim.org/scripts/script.php?script_id=1868))

*Keybindings*

<dl>
  <dt>,F</dt><dd>Fold</dd>
</dl>

Uses standard vim commands to open and close folds etc (:help fold)

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

## Tabular (b7b4d87 - 31 Mar 2011)

Configurable, flexible, intuitive text aligning ([more](http://github.com/godlygeek/tabular/blob/master/doc/Tabular.txt))

*Keybindings*

<dl>
  <dt>,tt</dt><dd>(when text is selected) format tables made with pipes (|)</dd>
</dl>

## unimpaired (1.1)

Pairs of handy bracket maps ([more](http://www.vim.org/scripts/script.php?script_id=1590))

## vim-bundler (3f1e6e9f, 22 Aug 2011)

Lightweight bag of Vim goodies for Bundler ([more](https://github.com/tpope/vim-bundler))

## vim-css-color (417eaf8 - 27 May 2011)

CSS color preview ([more](https://github.com/skammer/vim-css-color))

## ZoomWin (23)

Zoom in/out  of windows (toggle between one window and multi-window) ([more](http://www.vim.org/scripts/script.php?script_id=508))

*Keybindings*

<dl>
  <dt>,z</dt><dd>Zoom</dd>
</dl>

# Other Keybindings

<dl>
  <dt>ctrl-]</dt><dd>Jump to definition (needs exuberant ctags installed - see Tags section below)</dd>
  <dt>,c</dt><dd>Show/hide hidden characters</dd>
  <dt>,h</dt><dd>Hide search highlighting</dd>
  <dt>,rr</dt><dd>Run ruby file</dd>
  <dt>,,</dt><dd>Run rspec on current file</dd>
  <dt>,rt</dt><dd>Run run_tags script (assuming it's installed and in the path)</dd>
  <dt>,s</dt><dd>Show/hide spelling errors</dd>
  <dt>,sw</dt><dd>Strip trailing whitespace</dd>
  <dt>,w</dt><dd>Toggle word wrapping</dd>
  <dt>,p</dt><dd>Switch to 'projector mode' (large font, light colour scheme)</dd>
  <dt>RB</dt><dd>Open Ruby docs in browser for word under cursor</dd>
  <dt>RR</dt><dd>Open Rails docs in browser for word under cursor</dd>
</dl>


# Tags

The ctrl-] and ,rt shortcuts need both [exuberant ctags](http://blog.tobiascrawley.net/2009/01/01/generating-a-tags-file-from-a-git-hook/),
and the run_tags script installed.

The run_tags scripts are available for ubuntu ([script](https://gist.github.com/186567)/[raw](https://raw.github.com/gist/186567/d26a00ef99f4132a8bb5a58e981d93f4663f4ca8/run_tags.rb)) and  OS X ([script](https://gist.github.com/1564787)/[raw](https://raw.github.com/gist/1564787/484c239f55fe33d301e11fd29dff05221b6e2a04/run_tags.rb))

# Commands

<dl>
  <dt>:Lorem</dt><dd>Generate 'lorem ipsum' text</dd>
  <dt>:SudoW</dt><dd>Save using sudo (run <tt>sudo -v</tt> in terminal first)</dd>
</dl>

# Vim Resources

See Kerryb's vim bookmarks on his [pinboard](http://pinboard.in/u:kerryb/t:vim).
