# nachtleben.vim
New dark colorscheme with vivid colors for Vim. Well suited for Vim scripts and ConTeXt/LaTeX files.

"Nachtleben" means "nightlife" in German.

Some design choices:

- 8 carefully selected, bright colors + blueish black as background
- Normal text in light orange for optimal contrast and a warm global touch
- Comments are set in green (can't live without)
- Visual selection in solid light blue (softer highlighting à la monokai doesn't work for me)
- No terminal colors (I use `set termguicolors` instead)
- No italic/bold variant

## Installation

Copy `nachtleben.vim` into your `~/.vim/colors` folder.

Add this to your `vimrc`:

```vim
" For Vim 8.0 and above
set termguicolors
syntax on
color nachtleben
```

## Vim script preview

![Vim script example](/nachtleben_vim.png)

## ConTeXt file preview

![ConTeXt file example](/nachtleben_ctx.png)

Text set in Monaco.

