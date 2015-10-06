#preview-reg: intuitive plugin for registers/marks

##Intro
This small plugin provides a way to conveniently use registers/marks.
You could use mapping key to call a menu for previewing contents of registers/marks.
Choose menu by arrow keys, and it will paste content or jump to the target which you select.

##Requirements
Require tomtom/tlib_vim (https://github.com/tomtom/tlib_vim) before installed it.

##Installation
Recommend using plugin manager for you to install.  
Or copy plugin/preview-reg.vim to ~/.vim/plugin

Add these in your vimrc to open menu(you can set whatever key you want):
```
    noremap <leader>p :call SelectReg()<CR>  
    nnoremap <leader>m :call SelectMark()<CR>  
```
##User Guide
###Registers menu
Press the mapping key to see the menu of registers, and choose which item you need to paste by arrow key.  
Use "Enter" for selecting the item which will be put in the cursor position.
###Marks menu
Like register menu, you could use this menu to jump to any mark in file.

##Thanks
* tomtom for [tlib_vim] (https://github.com/tomtom/tlib_vim): it provides a good way to display menu in vim

##TODO
Reformat the information in menu
