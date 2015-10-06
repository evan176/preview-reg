" @Author:      Evan Gui (clown.gui@gmail.com)
" @Created:     2015-10-06.
" @Last Change: 2015-10-06.
" @License:     GPL (see http://www.gnu.org/licenses/gpl.txt)

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
