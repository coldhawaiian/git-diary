Description
===========

A place to keep various notes.

Git
===

References
----------

### Reference Paths ###

References are stored under the `.git/refs/` directory. Local branches
are represented by references under `refs/heads/`, "heads" because
they represent the "tips" of branches of commits.

Remote-tracking branches are stored under
`refs/remotes/<remote-name>/`. Tags are kept under `refs/tags`.

When you use `git filter-branch`, Git keeps a backup of the original
commit tree in the `refs/original/`.

### Reference Contents ###

References are just simple text files, each containing the sha1 hash
of the tip/head of the commit tree that they represent:

    $ cat .git/refs/heads/master
    9f27889e33d0f93e9887adbec535016de2d83d1e

According to [Pro Git](http://git-scm.com/book/en/Git-Internals-Git-References):

> You aren't encouraged to directly edit the reference files. Git
> provides a safer command to do this if you want to update a
> reference called `update-ref`:
>
>     $ git update-ref refs/heads/master \
>     > 1a410efbd13591db07496601ebc7a059dd55cfe9

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
