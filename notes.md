Description
===========

A place to keep various notes.

Vim
===

You can move the cursor forward rapidly by using `w`, and to go
backwards rapidly, you use `b`. Both take you to the beginning of a
word boundary.

Typing `e` will also moves the cursor forward, like `w`. However,
unlike `w`, `e` will move the cursor to the ***ends of word
boundaries***, not the beginning of them.

To very easily wrap lines to a certain column limit, first `:set
tw=<width>` (it stands for "textwidth", which is also the long name
for the option), then select the lines you want to wrap (`V` visual
mode is good for this), then simply type `gq`. Easy!

To copy text, select the text and type `y`, which apparently
[stands for "yank"](http://vim.wikia.com/wiki/Copy,_cut_and_paste).

Links
-----

1. [Delete newline in Vim](http://stackoverflow.com/questions/3983406/delete-newline-in-vim)
2. [Vim: how to redefine tab as 4 spaces](http://stackoverflow.com/questions/1878974/vim-how-to-redefine-tab-as-4-spaces)
