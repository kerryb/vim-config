# Kerry’s vim config

Started out pretty minimal, but has inevitably bloated a bit.

Primarily targetted at Elixir development, but also other bits and bobs that
I’ve found handy. Includes language server integration using
[CoC](https://github.com/neoclide/coc.nvim).

I’ve tried to comment `vimrc` enough to make it reasonably comprehensible.

## Installation

I haven’t tested this, but …

```
git clone https://github.com/kerryb/vim-config.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
```

(or more likely fork it and clone from your fork instead).

Then open vim and run `:PlugInstall`.

You’ll also need to install language-specific CoC plugins, eg `:CocInstall
coc-elixir`.
