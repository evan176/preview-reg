" This program gives show the menu for registers & marks
" Copyright (C) 2015 Evan Gui (clown.gui@gmail.com)
"
" This program is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.
"
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with this program.  If not, see <http://www.gnu.org/licenses/>.


function! s:capture_reg()
    redir @a
    silent reg
    redir END
    return split(@a, '\n')[1:]
endfunction

function! s:capture_mark()
    redir @b
    silent marks
    redir END
    return split(@b, '\n')[1:]
endfunction

function! SelectReg()
    let l:reg_list = s:capture_reg()
    let l:temp = tlib#input#List('s', 'Select a item to paste', l:reg_list)
    let l:reg_num = split(l:temp, "   ")[0]
    call feedkeys(l:reg_num . "p")
endfunction

function! SelectMark()
    let l:mark_list = s:capture_mark()
    let l:temp = tlib#input#List('s', 'Select a mark to jump', l:mark_list)
    let l:reg_num = split(l:temp, '   ')
    call feedkeys("'" . l:reg_num[0][1:])
endfunction
