" Author: Emiliano Carlos de Moraes Firmino
" Contact: emiliano.firmino@gmail.com
" Description: gvim configuration

set encoding=utf-8

if has("win32")
    set guifont=Consolas_for_Powerline_FixedD:h12:cDEFAULT
    let g:Powerline_symbols="fancy"
    let g:Powerline_mode_V="V·LINE"
    let g:Powerline_mode_cv="V·BLOCK"
    let g:Powerline_mode_S="S·LINE"
    let g:Powerline_mode_cs="S·BLOCK"
endif

set guioptions-=m " remove menu bar
set guioptions-=T " remove toolbar
set guioptions-=r " remove righ-hand scroll bar
set guioptions-=e " remove visual tabs
set guioptions+=c " console dialogs over gui dialogs
