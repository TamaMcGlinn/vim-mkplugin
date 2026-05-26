# mkplugin

mkplugin is a vim plugin to make vim plugins.

## Prerequisites

Vim 8/9 and NeoVim are supported.

## Installation

If you use [Plug](https://github.com/junegunn/vim-plug), add the following to your `.vimrc`:

```vim
Plug 'TamaMcGlinn/vim-mkplugin'
```

## Using mkplugin

```vimscript
:MkPlugin [plugin-name]
```

Or add a binding with trailing space to your vimrc:

```vimscript
nnoremap <leader>vpn :MkPlugin 
```

## Getting Help

See [the issue tracker](https://github.com/TamaMcGlinn/vim-mkplugin/issues) and `:help mkplugin`.
