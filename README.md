# vim-autoformat-extensions

This plugin simplifies adding certain formatters.

## Installation

Vundle:
```
Plugin 'Chiel92/vim-autoformat'  " format files
Plugin 'yuhanfang/vim-autoformat-extensions'
```

## Example

The `vim-autoformat` framework expects formatters to read from stdin and write
to stdout. The bazel buildifier mutates the file when formatting. To register
this in a compatible way, add the following to `.vimrc`:

```
autocmd BufReadPost * call fang#DeclareMutatingFormatter("bzl", '"buildifier"')
```
