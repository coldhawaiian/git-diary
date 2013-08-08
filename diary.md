2013-07-31, Wednesday
=====================

12:03 am
--------

Dear diary, I'm trying out Mercurial for the first time, just out of
curiosity. A lot of the commands look really similar to Git.

12:10 am
--------

Just made my first commit in Mercurial! I hope I can rewrite history
like I can in Git, because I'm not happy with my first commit message
(of course!) :P

Another thing that I notice is that Mercurial doesn't come with any
command prompt enhancements or Bash completion by default, if it even
exists.

11:44 pm
--------

Dear diary, today I learned that there actually is Bash completion for
Mercurial, it just isn't enabled by default (at least for the Windows
installation). It was located at

    C:/Program Files/Mercurial/contrib

along with a bunch of other handy configuration files.

I also signed up for a [Bitbucket](https://bitbucket.org/) account, so
I can start pushing changes to a remote repo.

2013-08-03, Saturday
====================

10:20 pm
--------

Dear diary, today I started working on my Git Diary project.

Also, I was looking for a way to automatically reformat text to wrap
at 72 columns in a text editor, like in Notepad++ or Sublime Text. I
found a way to do it in Vim: basically, you `:set tw=72`, and then you
select the text you want to reformat, then you type `gq`. See these
links for more info:

* [How to use Vim’s textwidth like a pro](http://blog.ezyang.com/2010/03/vim-textwidth/)
* [How can I wrap text to some length in Vim?](http://stackoverflow.com/questions/823754/how-can-i-wrap-text-to-some-length-in-vim/824601#824601)

I also found out that Cygwin's Vim distribution comes with some great
syntax highlighting for Markdown (FYI, it also comes with ***A TON***
of great syntax definitions for other file types too). Msysgit's
distribution of Vim, however, doesn't come with a whole lot of syntax
definitions, though there are neat definitions for Git related stuff,
like rebases.

11:02 pm
--------

[MarkdownPad](http://markdownpad.com/) is a pretty cool product.

2013-08-04, Sunday
==================

12:46 pm
--------

Dear diary, today I just released my [Git Ninja Toolkit (GNT)](https://github.com/coldhawaiian/git-ninja-toolkit).
I gave it an MIT License, which I found some more resources for at the
[Open Source Initiative](http://opensource.org/licenses/MIT).

I also found this Stack Overflow answer about
[using anchors with Markdown](http://stackoverflow.com/questions/6695439/how-do-you-create-link-to-a-named-anchor-in-multimarkdown/7015050#7015050).

3:05 pm
-------

I was looking through some of the most recent Git questions on Stack
Overflow, and I [knittl's answer](http://stackoverflow.com/questions/18044819/how-to-remove-commits-from-rebased-branch-and-rebase-again/18044973#18044973)
mentioned "patch queuing systems" for Git, which sounded to me a lot
like [Mercurial's MQ extension](http://mercurial.selenic.com/wiki/MqExtension).

I looked up the mentioned Git patch queuing systems, and these are
what I found:

* [What's the Git approach to publish a patch queue?](http://stackoverflow.com/questions/5016862/whats-the-git-approach-to-publish-a-patch-queue).
* [git guilt](http://repo.or.cz/w/guilt.git).
* [TopGit](https://github.com/greenrd/topgit).
