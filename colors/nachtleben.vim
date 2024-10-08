"    _  __         __   __  __    __
"   / |/ /__ _____/ /  / /_/ /__ / /  ___ ___     /  nachtleben.vim - Vim color file
"  /    / _ `/ __/ _ \/ __/ / -_) _ \/ -_) _ \   /  Author: <schickele|you~know~what|web|dot|de>
" /_/|_/\_,_/\__/_//_/\__/_/\__/_.__/\__/_//_/  /  Created: 2018-11 | Last change: 2024-10

" Init {{{
hi clear

set background=dark

if exists('syntax on')
    syntax reset
endif

let g:colors_name='nachtleben' " }}}

" xterm256 colors (≥ 2023-08)
" Hex code identical with xterm256 color numbers below

let s:mred = '#ff5f5f' " red
let s:dora = '#ff875f' " dark orange
let s:lora = '#ffaf5f' " light orange: default fg color
let s:yell = '#ffff5f' " yellow
let s:gree = '#87d787' " green
let s:lblu = '#5fd7ff' " light blue
let s:dblu = '#5f87ff' " dark blue
let s:mage = '#ff5fd7' " magenta
let s:blac = '#121212' " background black (7%)
let s:dgra = '#303030' " cursorline gray
let s:whit = '#ffffff' " pure white

let s:mred256 = '203'
let s:dora256 = '209'
let s:lora256 = '215'
let s:yell256 = '227'
let s:gree256 = '114'
let s:lblu256 = '81'
let s:dblu256 = '69'
let s:mage256 = '206'
let s:blac256 = '233'
let s:dgra256 = '236'
let s:whit256 = '15'

" Highlight function {{{
function! s:hi(group, fg, bg, t_fg, t_bg, style, special)
  let l:command = 'hi ' . a:group

  if (!empty(a:fg))
    let l:command .= ' guifg=' . a:fg
  endif

  if (!empty(a:bg))
    let l:command .= ' guibg=' . a:bg
  endif

  if (!empty(a:t_fg))
    let l:command .= ' ctermfg=' . a:t_fg
  endif

  if (!empty(a:t_bg))
    let l:command .= ' ctermbg=' . a:t_bg
  endif

  if (!empty(a:style))
    let l:command .= ' gui=' . a:style
    let l:command .= ' cterm=' . a:style
  endif

  if (!empty(a:special))
    let l:command .= ' guisp=' . a:special
  endif

  execute l:command
endfunction " }}}

call s:hi('ColorColumn',      'NONE', s:dgra, 'NONE',    s:dgra256, '',          '')
call s:hi('Conceal',          s:dblu, 'NONE', s:dblu256, 'NONE',    '',          '')
call s:hi('Cursor',           s:blac, s:lora, 'NONE',    'NONE',    '',          '')
call s:hi('CursorColumn',     'NONE', s:dgra, 'NONE',    s:dgra256, '',          '')
call s:hi('CursorLine',       'NONE', s:dgra, 'NONE',    s:dgra256, '',          '')
call s:hi('CursorLineNr',     s:lora, s:dgra, s:lora256, s:dgra256, 'NONE',      '')
call s:hi('DiffAdd',          s:blac, s:gree, s:blac256, s:gree256, '',          '')
call s:hi('DiffChange',       s:blac, s:dblu, s:blac256, s:dblu256, '',          '')
call s:hi('DiffDelete',       s:blac, s:mred, s:blac256, s:mred256, 'NONE',      '')
call s:hi('DiffText',         s:blac, s:mred, s:blac256, s:mred256, 'NONE',      '')
call s:hi('Directory',        s:dblu, '',     s:dblu256, '',        '',          '')
call s:hi('ErrorMsg',         s:blac, s:mred, s:blac256, s:mred256, '',          '')
call s:hi('FoldColumn',       s:blac, s:dblu, s:blac256, s:dblu256, '',          '')
call s:hi('Folded',           s:blac, s:dblu, s:blac256, s:dblu256, '',          '')
call s:hi('Ignore',           s:dgra, 'NONE', s:dgra256, 'NONE',    '',          '')
call s:hi('IncSearch',        s:dora, s:whit, s:dora256, s:whit256, '',          '')
call s:hi('LineNr',           s:dblu, '',     s:dblu256, '',        '',          '')
call s:hi('MatchParen',       s:blac, s:lblu, s:blac256, s:lblu256, '',          '')
call s:hi('ModeMsg',          s:blac, s:yell, s:blac256, s:yell256, 'NONE',      '')
call s:hi('MoreMsg',          s:blac, s:yell, s:blac256, s:yell256, 'NONE',      '')
call s:hi('NonText',          s:dblu, '',     s:dblu256, '',        'NONE',      '')
call s:hi('Normal',           s:lora, s:blac, s:lora256, s:blac256, '',          '')
call s:hi('Pmenu',            s:blac, s:lora, s:blac256, s:lora256, '',          '')
call s:hi('PmenuSbar',        s:blac, s:lora, s:blac256, s:lora256, '',          '')
call s:hi('PmenuSel',         s:blac, s:mred, s:blac256, s:mred256, '',          '')
call s:hi('PmenuThumb',       s:blac, s:mred, s:blac256, s:mred256, '',          '')
call s:hi('Question',         s:blac, s:yell, s:blac256, s:yell256, 'NONE',      '')
call s:hi('Search',           s:blac, s:dblu, s:blac256, s:dblu256, '',          '')
call s:hi('SignColumn',       'NONE', s:dgra, 'NONE',    s:dgra256, '',          '')
call s:hi('SpecialKey',       s:dblu, '',     s:dblu256, '',        '',          '')
call s:hi('StatusLine',       s:blac, s:dblu, s:blac256, s:dblu256, 'NONE',      '')
call s:hi('StatusLineNC',     s:dblu, '',     s:dblu256, '',        'NONE',      '')
call s:hi('StatusLineTerm',   s:blac, s:dblu, s:blac256, s:dblu256, 'NONE',      '')
call s:hi('StatusLineTermNC', s:dblu, s:blac, s:dblu256, '',        'NONE',      '')
call s:hi('TabLine',          s:blac, s:dblu, s:blac256, s:dblu256, 'NONE',      '')
call s:hi('TabLineFill',      s:blac, '',     s:blac256, '',        '',          '')
call s:hi('TabLineSel',       s:lblu, s:dgra, s:lblu256, s:dgra256, 'NONE',      '')
call s:hi('Title',            s:lblu, '',     s:lblu256, '',        'NONE',      '')
call s:hi('ToolbarButton',    s:dblu, s:blac, s:dblu256, '',        'NONE',      '')
call s:hi('ToolbarLine',      s:blac, s:dblu, s:blac256, s:dblu256, 'NONE',      '')
call s:hi('VertSplit',        s:blac, s:dblu, s:blac256, s:dblu256, '',          '')
call s:hi('Visual',           s:blac, s:lblu, s:blac256, s:lblu256, '',          '')
call s:hi('VisualNOS',        s:blac, s:lblu, s:blac256, s:lblu256, 'NONE',      '')
call s:hi('WarningMsg',       s:blac, s:yell, s:blac256, s:yell256, '',          '')
call s:hi('WildMenu',         s:blac, s:lora, s:blac256, s:lora256, '',          '')
call s:hi('lCursor',          s:blac, s:lora, s:blac256, s:lora256, '',          '')

call s:hi('Comment',          s:gree, '',     s:gree256, '',        '',          '')
call s:hi('Constant',         s:lblu, '',     s:lblu256, '',        '',          '')
call s:hi('Error',            s:mred, 'NONE', s:mred256, 'NONE',    'UNDERLINE', '')
call s:hi('Identifier',       s:mred, '',     s:mred256, '',        '',          '')
call s:hi('PreProc',          s:mage, '',     s:mage256, '',        '',          '')
call s:hi('Special',          s:dblu, '',     s:dblu256, '',        '',          '')
call s:hi('Statement',        s:dora, '',     s:dora256, '',        'NONE',      '')
call s:hi('Todo',             s:yell, 'NONE', s:yell256, 'NONE',    '',          '')
call s:hi('Type',             s:lora, '',     s:lora256, '',        'NONE',      '')
call s:hi('Underlined',       'NONE', 'NONE', 'NONE',    'NONE',    'UNDERLINE', '')

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
hi Underlined     ctermfg=NONE ctermfg=NONE

" From Bram Moolenaar himself - 2020-06
if !has('nvim')
  let &t_Cs = "\e[4:3m"
  let &t_Ce = "\e[4:0m"
  hi SpellBad   guisp=#ff005f   gui=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE term=underline cterm=undercurl ctermul=197
  hi SpellCap   guisp=yellow    gui=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE term=underline cterm=undercurl ctermul=yellow
endif

hi! link lilySlur         Comment
hi! link vimCommentString Comment
hi! link vimCommentTitle  Comment
