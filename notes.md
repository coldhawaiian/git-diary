Description
===========

A place to keep various notes.

JavaScript
==========

[Using `toString()` to detect object class](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/toString#Using_toString_to_detect_object_type)
---------------

> `toString()` can be used with every object and allows you to get its class. To use the `Object.prototype.toString()` with every object, you need to call `Function.prototype.call()` or `Function.prototype.apply()` on it, passing the object you want to inspect as the first parameter called `thisArg`.
>
> ```javascript
> var toString = Object.prototype.toString;
> toString.call(new Date); // [object Date]
> toString.call(new String); // [object String]
> toString.call(Math); // [object Math]
> 
> // Since JavaScript 1.8.5
> toString.call(undefined); // [object Undefined]
> toString.call(null); // [object Null]
> ```
>

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

### HEAD: Symbolic References ###

According to [Pro Git](http://git-scm.com/book/en/Git-Internals-Git-References#The-HEAD), blah blah

    $ cat .git/HEAD
    ref: refs/heads/master

Links:

* https://www.kernel.org/pub/software/scm/git/docs/git-symbolic-ref.html
* http://stackoverflow.com/questions/4986000/whats-the-recommended-usage-of-a-git-symbolic-reference/5000668#5000668
* http://stackoverflow.com/questions/17913550/git-moving-the-git-directory-to-another-drive-keep-the-source-code-where-it

> The steps to re-configure an existing checkout are:
>
> 1. move the `.git` dir to where it needs to be.
> 2. replace it with a file `.git` containing: `gitdir: path/to/.git`.
> 3. define `core.worktree` to point at the working copy.
>
> As a script that would be:
>
>     $ cd my/project
>     $ mv .git /tmp/.git
>     $ echo "gitdir: /tmp/.git" > .git
>     $ git config core.worktree $PWD

OS X
====

* Paging in `less`: use <kbd>space</kbd> to page down and <kbd>b</kbd> to page up.  Weird. [Source](http://programming4life.wordpress.com/2009/02/19/mac-os-x-less-up-down/)
* `open .` to open current working directory in Finder ([source](http://apple.stackexchange.com/questions/5435/got-any-tips-or-tricks-for-terminal-in-mac-os-x)).
* Hold option and click a position in the current line to move your cursor to that position ([source](http://apple.stackexchange.com/a/5502/30766)).
* Start a quick webserver from any directory: `python -m SimpleHTTPServer 8000` ([source](http://apple.stackexchange.com/a/5480/30766)).
* When you're editing a particularly long and gnarly command line: 
ctrl+X, ctrl+E will pop you into your editor and let you work on it there ([source](http://apple.stackexchange.com/a/5471/30766)).

Switching Terminal Tabs
-----------------------

> You can move left and right through tabs with CMD + SHIFT + ] for right and CMD + SHIFT + [ for left. &mdash; [source](http://apple.stackexchange.com/a/81621/30766).


Regular Expressions
===================

Debuggers
---------

* [Debuggex](https://www.debuggex.com/), excellent visualization, for JavaScript, Python, and PCRE.
* [RegexHero.Net](http://regexhero.net/tester/), for .NET.
* [RegexPal](http://regexpal.com/), for JavaScript.
* [Rubular](http://rubular.com/), for Ruby.

Greediness
----------

By default, regular expressions are *greedy*, meaning that they will capture many groups of matches as possible, instead of just stopping at the minimum necessary characters for a match.  This behavior can be modified with the **lazy quantifier**, `?`.

Parsing HTML
------------

* [RegEx match open tags except XHTML self-contained tags](http://stackoverflow.com/questions/1732348/regex-match-open-tags-except-xhtml-self-contained-tags)
* [Can you provide some examples of why it is hard to parse XML and HTML with a regex?](http://stackoverflow.com/questions/701166/can-you-provide-some-examples-of-why-it-is-hard-to-parse-xml-and-html-with-a-reg)

Ruby
====

Managing Versions
-----------------

* rbenv
* RVM

Style Guides
============

* [GitHub Style Guide](https://github.com/styleguide).

Sublime Text 3
==============

* [Run from the command line (OS X)](http://www.sublimetext.com/docs/3/osx_command_line.html).
  * Also see http://stackoverflow.com/a/20155149/456814.
* [How to auto complete](http://www.sublimetext.com/docs/3/auto_complete.html).

Unix Tools
==========

* `du`: Disk Usage.
* `tree`: Unix only, but available for OS X as a Homebrew package.

Vim
===

Configuration
-------------

* To un-set values, prefix them with "no", e.g. `:set noexpandtab`.
  * [Source](http://wills-tech-notes.blogspot.com/2008/09/vim-unset-command.html).

[Moving Around](http://vim.wikia.com/wiki/Moving_around)
--------------------------------------------------------

* `e` jump forward to the end of a word.
* `w` jump forward to the beginning of a word.
* `<n>w` jump forward `n` words.
* `b` jump backward to the beginning of a word.
* `<n>b` jump backward `n` words.
* CTRL-F to page forward.
* CTRL-B to page backward.

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

Tabbing
-------

* Use `:%retab!` to retab a whole file based on your current tab settings ([source](http://stackoverflow.com/a/9105889/456814)).

Quitting VimDiff
---------------------

Use one of the following:

1. `:qall`
2. `:qa`

Aside: use `:wqall` to write all open windows.

[Source](http://vim.1045645.n5.nabble.com/Exiting-vimdiff-td1143234.html).

Links
-----

1. [Delete newline in Vim](http://stackoverflow.com/questions/3983406/delete-newline-in-vim)
2. [Vim: how to redefine tab as 4 spaces](http://stackoverflow.com/questions/1878974/vim-how-to-redefine-tab-as-4-spaces)
