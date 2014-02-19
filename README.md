An awesome Vim config for development, slow roasted with a Ruby twist and a shot of web.

# Installation

```bash
    git clone https://github.com/AdamWhittingham/vim-config.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    vim +BundleInstall +qall
```

Should this not leave you with a nice working vim (certain versions are a bit iffy about the last line) then launch vim and run `:BundleInstall`

## Keeping up-to-date
1. Grab the latest version of the config

```bash
    cd ~/.vim
    git pull
```

2. Grab the latest plugins by launching vim and running `:BundleInstall`

## External Dependencies
There are a couple of things you might want to install to get the best out of this config:
* ctags - enables tags support when workingn with code
* Ack - enables grepping through the current directories with Ack-grep
* Ag - enables grepping through the current directories with [the_silver_searcher](https://github.com/ggreer/the_silver_searcher)

# Local Customisation
Local changes (eg if you prefer a different font or colour scheme) can be made `~/.vimrc.local`
(or in a branch!)

# Plugins - all the goodies!

See the plugins' web pages for more information. The keybindings listed are mostly
just those defined or overridden locally, not the ones provided by default.

## Ack

This plugin is a front for the Perl module App::Ack. Ack can be used as a replacement for 99% of the uses of grep.
(more)[http://www.vim.org/scripts/script.php?script_id=2572]

Requires ack (aka ack-grep) to be installed.

## Ag

This plugin is a front for Ag. Ag can be used as a replacement for 153% of the uses of Ack.

Requires [the_silver_surfer](https://github.com/ggreer/the_silver_searcher) to be installed

## Autotag

Automatically update tags when saving files ([more](http://www.vim.org/scripts/script.php?script_id=1343))

## bufexplorer

Buffer explorer/browser ([more](http://www.vim.org/scripts/script.php?script_id=42))

*Keybindings*

<dl>
  <dt>,.</dt><dd>Show buffer explorer</dd>
</dl>

## Coffeescript

Adds support for CoffeeScript. It handles syntax, indenting, and compiling ([more](http://www.vim.org/scripts/script.php?script_id=3590))

## color_highlight

Highlight color names and codes in the same color that they represent ([more] (http://www.vim.org/scripts/script.php?script_id=3963))

*Keybindings*

<dl>
  <dt>,cC</dt><dd>Toggle colour highlighting</dd>
  <dt>,cF</dt><dd>Toggle text or background colouring</dd>
</dl>

## CtrlP

Fast file navigation for VIM ([more](https://github.com/kien/ctrlp.vim))

*Keybindings*

<dl>
  <dt>C-p</dt><dd>Open the CtrlP fuzzy search</dd>
  <dt>,t</dt><dd>Refresh the cache and open the CtrlP fuzzy search</dd>
</dl>

## Gundo

Gundo is a Vim plugin for visualizing your undo tree to make it usable ([more](http://www.vim.org/scripts/script.php?script_id=3304))

*Keybindings*

<dl>
  <dt>,u</dt><dd>Toggle Gundo tree</dd>
</dl>

## markdown

Syntax highlighting for Markdown ([more](http://plasticboy.com/markdown-vim-mode/))

## machit

Allows % to be changed to match more than single characters; often more up-to-date than the version which ships with Vim. ([more](http://www.vim.org/scripts/script.php?script_id=39))

## nerdcommenter

A plugin that allows for easy commenting of code for many filetypes ([more](http://www.vim.org/scripts/script.php?script_id=1218))
<dl>
  <dt>,c{space}</dt><dd>Comment/Uncomment this line</dd>
</dl>

## nerdtree

A tree explorer plugin for navigating the filesystem ([more](http://www.vim.org/scripts/script.php?script_id=1658))

*Keybindings*

<dl>
  <dt>,m</dt><dd>Show/hide NERDTree</dd>
  <dt>,f</dt><dd>Show current file in tree</dd>
  <dt>C</dt><dd>Set the current folder to be the root of the tree</dd>
  <dt>p</dt><dd>Go to parent of selected item</dd>
  <dt>?</dt><dd>Toggle the help list</dd>
</dl>

## projector mode

Toggle 'projector mode': larger font and high contrast colour scheme ([more](https://github.com/AdamWhittingham/projector_mode))
<dl>
  <dt>,p</dt><dd>Toggle 'projector mode' (large font, high contrast)</dd>
</dl>

## ragtag

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

## rails

Ruby on Rails: easy file navigation, enhanced syntax highlighting, and more ([more](http://www.vim.org/scripts/script.php?script_id=1567))

*Keybindings*

<dl>
  <dt>,r</dt><dd>run rake</dd>
</dl>

## rake

It's like rails.vim without the rails ([more](http://www.vim.org/scripts/script.php?script_id=3669))

## repeat

Use the repeat command (.) with supported plugins ([more](http://www.vim.org/scripts/script.php?script_id=2136))

## speeddating

Fix up C-a and C-x when dealing with dates. ([more](https://github.com/tpope/vim-speeddating))

## SuperTab

Do all your insert-mode completion with Tab ([more](http://www.vim.org/scripts/script.php?script_id=1643))

## surround

Delete/change/add parentheses/quotes/XML-tags/much more with ease ([more](http://www.vim.org/scripts/script.php?script_id=1697))

## syntastic

Automatic syntax checking ([more](https://github.com/scrooloose/syntastic))

## Tabular

Configurable, flexible, intuitive text aligning ([more](http://github.com/godlygeek/tabular))

*Keybindings*

<dl>
  <dt>,a=</dt><dd>Align on =</dd>
  <dt>,a=></dt><dd>Align on =></dd>
  <dt>,a,</dt><dd>Align on ,</dd>
  <dt>,a:</dt><dd>Align on :</dd>
  <dt>,a{</dt><dd>Align on {</dd>
  <dt>,a|</dt><dd>Align on |</dd>
  <dt>,a<space><dt><dd>Align on spaces</dd>
  <dt>,tt</dt><dd>(when text is selected) format tables made with pipes (|)</dd>
</dl>

## Tagbar

Sidebar for showing and navigating the tags in current file ([more](https://github.com/majutsushi/tagbar))

*Keybindings*

<dl>
  <dt>,]</dt><dd>toggle the sidebar</dd>
</dl>

## unimpaired

Pairs of handy bracket maps ([more](http://www.vim.org/scripts/script.php?script_id=1590))

## vim-abolish

Better abbreviations, substitution and search with Bash like {a,b} style expansions

## vim-airline

Powerline like behaviour, but without the heavy Python ([more](https://github.com/bling/vim-airline))

## vim-gitgutter

Show the changes made since the last commit in the gutter ([more](https://github.com/airblade/vim-gitgutter))

<dl>
  <dt>,g</dt><dd>Skip to the next changed chunk</dd>
  <dt>,G</dt><dd>Skip to the previous changed chunk</dd>
  <dt>,gt</dt><dd>Toggle the git change gutter</dd>
  <dt>,gh</dt><dd>Highlight all changed lines</dd>
</dl>

## vim-indent-guidelines

Show indent guidelines - very useful when editing Haml! ([more](https://github.com/nathanaelkane/vim-indent-guides))

<dl>
  <dt>,ig</dt><dd>Toggle indentation guidelines</dd>
</dl>

## vim-haml

Add haml, sass and SCSS syntax support ([more](https://github.com/tpope/vim-haml))

## vim-less

Less syntax highlighting ([more](https://github.com/groenewege/vim-less))

## vim-rails

Quick navigation around rails projects ([more](https://github.com/tpope/vim-rails))

<dl>
  <dt>:A</dt><dd>Alternate file- switch between specs and production code</dd>
  <dt>:R</dt><dd>Related file- switch between modles, controllers and views</dd>
  <dt>:Emodel</dt><dd>Switch to the model</dd>
  <dt>:Eview</dt><dd>Switch to the view</dd>
  <dt>:Econtroller</dt><dd>Switch to the controller</dd>
</dl>

## vim-ruby

Ruby support (newer than the version released with vim). ([more](https://github.com/vim-ruby/vim-ruby))

## vim-ruby-refactoring

Refactoring tool for Ruby in vim! ([more](https://github.com/ecomba/vim-ruby-refactoring))

See [relish documentation](http://relishapp.com/despo/vim-ruby-refactoring) for examples.

## vroom

A plugin for running your Ruby tests, specs, and features. ([more](http://www.vim.org/scripts/script.php?script_id=3995))

<dl>
  <dt>,t</dt><dd>Run current test/spec/feature, or previous if in another file</dd>
  <dt>,T</dt><dd>Run nearest test/spec/feature to the cursor</dd>
</dl>

## ZoomWin

Zoom in/out of windows and panes (toggle between one window and multi-window) ([more](http://www.vim.org/scripts/script.php?script_id=508))

*Keybindings*

<dl>
  <dt>,z</dt><dd>Zoom</dd>
</dl>

# Other Keybindings

<dl>
  <dt>,,</dt><dd>Toggle between the previously opened buffer</dd>
  <dt>ctrl-]</dt><dd>Jump to definition (needs exuberant ctags installed</dd>
  <dt>ctrl-n</dt><dd>Toggle between absolute and relative numbering</dd>
  <dt>,c</dt><dd>Show/hide hidden characters</dd>
  <dt>,h</dt><dd>Hide search highlighting</dd>
  <dt>,rt</dt><dd>Run `ctags -R .`</dd>
  <dt>,s</dt><dd>Show/hide spelling errors</dd>
  <dt>,sw</dt><dd>Strip trailing whitespace</dd>
  <dt>,tsp</dt><dd>Align on whitespace</dd>
  <dt>,tlt</dt><dd>Align LaTEX tables (to avoid clashing with our existing ,tt mapping)</dd>
  <dt>,w</dt><dd>Toggle word wrapping</dd>
  <dt>RB</dt><dd>Open Ruby docs in browser for word under cursor</dd>
  <dt>RR</dt><dd>Open Rails docs in browser for word under cursor</dd>
</dl>

# Commands

<dl>
  <dt>:Lorem</dt><dd>Generate 'lorem ipsum' text</dd>
  <dt>:Hipster</dt><dd>Generate 'hipster ipsum' text</dd>
</dl>
