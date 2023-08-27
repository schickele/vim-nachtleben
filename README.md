# nachtleben.vim
Dark colorscheme with vivid colors for Vim. Well suited for Vim scripts and ConTeXt/LaTeX files.

"Nachtleben" means "nightlife" in German.

Some design choices:

- 8 carefully selected, bright colors + almost black as background
- Normal text in light orange for optimal contrast and a warm global touch
- Comments are set in green (can't live without)
- Visual selection in solid light blue (softer highlighting à la monokai doesn't work for me)
- ~~No terminal colors (I use `set termguicolors` instead)~~ Since 2023-08: terminal colors (xterm-256color)
- No italic/bold variant

## Installation

Copy `nachtleben.vim` into your `~/.vim/colors` folder.

Add this to your `vimrc`:

```vim
syntax on
color nachtleben
```

## Vim script preview

![Vim script example](/screenshot_nachtleben_vim.png)

## ConTeXt file preview

![ConTeXt file example](/screenshot_nachtleben_context.png)

Text set in Input.

