" Nachtleben.vim - Vim color file
" Author: <schickele|you~know~what|web|dot|de>
" Created: 2018-11 | Last change: 2026-09

" History: 2026-09: Code refactoring with ChatGPT / Bold matching parentheses

hi clear
set background=dark
syntax reset

let g:colors_name = 'nachtleben'

" Palette - hex values are equal to terminal colors
let s:p = {
      \ 'red':     ['#ff5f5f', 203],
      \ 'orange':  ['#ff875f', 209],
      \ 'amber':   ['#ffaf5f', 215],
      \ 'yellow':  ['#ffd700', 227],
      \ 'green':   ['#87d787', 114],
      \ 'cyan':    ['#5fd7ff', 81],
      \ 'blue':    ['#5f87ff', 69],
      \ 'magenta': ['#ff5fd7', 206],
      \ 'black':   ['#121212', 233],
      \ 'gray':    ['#303030', 236],
      \ 'white':   ['#ffffff', 15],
      \ }

function! s:hi(group, fg, bg, style) abort
  let l:cmd = ['hi', a:group]

  if a:fg !=# ''
    if a:fg ==# 'NONE'
      call add(l:cmd, 'guifg=NONE')
      call add(l:cmd, 'ctermfg=NONE')
    else
      call add(l:cmd, 'guifg=' . s:p[a:fg][0])
      call add(l:cmd, 'ctermfg=' . s:p[a:fg][1])
    endif
  endif

  if a:bg !=# ''
    if a:bg ==# 'NONE'
      call add(l:cmd, 'guibg=NONE')
      call add(l:cmd, 'ctermbg=NONE')
    else
      call add(l:cmd, 'guibg=' . s:p[a:bg][0])
      call add(l:cmd, 'ctermbg=' . s:p[a:bg][1])
    endif
  endif

  if a:style !=# ''
    call add(l:cmd, 'gui=' . a:style)
    call add(l:cmd, 'cterm=' . a:style)
  endif

  execute join(l:cmd)
endfunction

" UI
call s:hi('Normal',           'amber',   'black',   '')
call s:hi('ColorColumn',      'NONE',    'gray',    '')
call s:hi('Conceal',          'blue',    'NONE',    '')
call s:hi('Cursor',           'black',   'amber',   '')
call s:hi('CursorColumn',     'NONE',    'gray',    '')
call s:hi('CursorLine',       'NONE',    'gray',    '')
call s:hi('CursorLineNr',     'amber',   'gray',    'NONE')
call s:hi('Directory',        'blue',    'NONE',    '')
call s:hi('FoldColumn',       'black',   'blue',    '')
call s:hi('Folded',           'black',   'blue',    '')
call s:hi('Ignore',           'gray',    'NONE',    '')
call s:hi('LineNr',           'blue',    'NONE',    '')
call s:hi('NonText',          'blue',    'NONE',    'NONE')
call s:hi('SignColumn',       'NONE',    'gray',    '')
call s:hi('SpecialKey',       'blue',    'NONE',    '')
call s:hi('StatusLine',       'black',   'blue',    'NONE')
call s:hi('StatusLineNC',     'blue',    'NONE',    'NONE')
call s:hi('StatusLineTerm',   'black',   'blue',    'NONE')
call s:hi('StatusLineTermNC', 'blue',    'black',   'NONE')
call s:hi('TabLine',          'black',   'blue',    'NONE')
call s:hi('TabLineFill',      'black',   'NONE',    '')
call s:hi('TabLineSel',       'cyan',    'gray',    'NONE')
call s:hi('Title',            'cyan',    'NONE',    'NONE')
call s:hi('ToolbarButton',    'blue',    'black',   'NONE')
call s:hi('ToolbarLine',      'black',   'blue',    'NONE')
call s:hi('VertSplit',        'black',   'blue',    '')
call s:hi('Visual',           'black',   'cyan',    '')
call s:hi('VisualNOS',        'black',   'cyan',    'NONE')
call s:hi('lCursor',          'black',   'amber',   '')
call s:hi('IncSearch',        'orange',  'white',   '')
call s:hi('MatchParen',       'cyan',    'NONE',    'BOLD,UNDERLINE')
call s:hi('Pmenu',            'black',   'amber',   '')
call s:hi('PmenuSbar',        'black',   'amber',   '')
call s:hi('PmenuSel',         'black',   'red',     '')
call s:hi('PmenuThumb',       'black',   'red',     '')
call s:hi('Search',           'black',   'blue',    '')
call s:hi('WildMenu',         'black',   'amber',   '')
call s:hi('ErrorMsg',         'black',   'red',     '')
call s:hi('ModeMsg',          'black',   'yellow',  'NONE')
call s:hi('MoreMsg',          'black',   'yellow',  'NONE')
call s:hi('Question',         'black',   'yellow',  'NONE')
call s:hi('WarningMsg',       'black',   'yellow',  '')
call s:hi('DiffAdd',          'black',   'green',   '')
call s:hi('DiffChange',       'black',   'blue',    '')
call s:hi('DiffDelete',       'black',   'red',     'NONE')
call s:hi('DiffText',         'black',   'red',     'NONE')

" Syntax
call s:hi('Added',            'green',   'NONE',    '')
call s:hi('Comment',          'green',   'NONE',    '')
call s:hi('Constant',         'cyan',    'NONE',    '')
call s:hi('Error',            'red',     'NONE',    'UNDERLINE')
call s:hi('Identifier',       'red',     'NONE',    '')
call s:hi('PreProc',          'magenta', 'NONE',    '')
call s:hi('Special',          'blue',    'NONE',    '')
call s:hi('Statement',        'orange',  'NONE',    'NONE')
call s:hi('Todo',             'yellow',  'NONE',    '')
call s:hi('Type',             'amber',   'NONE',    'NONE')
call s:hi('Underlined',       'NONE',    'NONE',    'UNDERLINE')

" Explicit terminal attribute resets
hi CursorLine     cterm=NONE
hi DiffText       cterm=NONE
hi Identifier     cterm=NONE
hi ModeMsg        cterm=NONE
hi StatusLine     cterm=NONE
hi StatusLineTerm cterm=NONE
hi TabLine        cterm=NONE
hi TabLineSel     cterm=NONE
hi ToolbarButton  cterm=NONE
hi VisualNOS      cterm=NONE
hi Underlined     ctermfg=NONE ctermbg=NONE

" Spell checking (Neovim)
if !has('nvim')
  let &t_Cs = "\e[4:3m"
  let &t_Ce = "\e[4:0m"
  hi SpellBad
        \ guisp=#ff005f gui=undercurl guifg=NONE guibg=NONE
        \ ctermfg=NONE ctermbg=NONE term=underline cterm=undercurl ctermul=197
  hi SpellCap
        \ guisp=yellow gui=undercurl guifg=NONE guibg=NONE
        \ ctermfg=NONE ctermbg=NONE term=underline cterm=undercurl ctermul=yellow
endif

" Syntax links
hi! link lilySlur          Comment
hi! link vimCommentString  Comment
hi! link vimCommentTitle   Comment
hi! link Changed           Special
hi! link Removed           Identifier

" Cleaning
unlet s:p
delfunction s:hi
