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

[Moving Around](http://vim.wikia.com/wiki/Moving_around)
--------------------------------------------------------

* `e` jump forward to the end of a word.
* `w` jump forward to the beginning of a word.
* `<n>w` jump forward `n` words.
* `b` jump backward to the beginning of a word.
* `<n>b` jump backward `n` words.

* `)` jump forward one sentence.
* `(` jump backward one sentence.

* `0` jump to beginning of line.
* `^` jump to beginning of line (first non-blank character).
* `$` jump to end of line.

* `}` jump forward one paragraph.
* `{`  jump backward one paragraph.

* `H` jump to the top of the screen.
* `M` jump to the middle of the screen.
* `L` jump to the bottom of the screen.

* `''` return to the line where the cursor was before the latest jump.
* ```` return to the cursor position before the latest jump (undo the jump).
* `%` jump to corresponding item, e.g. from an open brace to its matching closing brace.

Editing
-------

To very easily wrap lines to a certain column limit, first `:set
tw=<width>` (`tw` stands for `textwidth`, which is also the long name
for the option), then select the lines you want to wrap (`V` visual
mode is good for this), then simply type `gq`. Easy!

To copy text, select the text and type `y`, which apparently
[stands for "yank"](http://vim.wikia.com/wiki/Copy,_cut_and_paste).

* Column info in status bar, `:set ruler`.
* Column guide, [`:set colorcolumn=<n>`](http://superuser.com/questions/365320/how-to-show-the-current-column-in-the-statusbar-in-vim/365323#365323).

Links
-----

1. [Delete newline in Vim](http://stackoverflow.com/questions/3983406/delete-newline-in-vim)
2. [Vim: how to redefine tab as 4 spaces](http://stackoverflow.com/questions/1878974/vim-how-to-redefine-tab-as-4-spaces)
