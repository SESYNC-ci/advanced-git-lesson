---
---

## Branches

A *branch* is a separate "version" of a repo with its own history --- it is not a separate copy, it exists within the repo where it was created.

The expectation here is that you are going to make some changes to temporarily test things out, and then either merge the
commits you made in the side branch back into the main branch, or delete/abandon the branch if you don't want to incorporate
the changes you made there.
{:.notes}

===

The primary branch, from which side branches are typically made, is called the *master* branch by default, although git and
GitHub are going to switch this name to something like "main" or "primary" in future versions. We will call it the *primary*
branch in this lesson whenever possible.

*A clarifying note*: The distinction between, on the one hand, local versus remote (origin) and, on the other hand, primary
(master) branch versus other branches can be confusing at first --- it was to me. You can have multiple branches on both the
local and remote copies of the repository. They need not be the same. But if you want to push to, or pull from, the remote, the
default will be the primary branch unless you specify which branch you are pushing, or pulling.
{:.notes}

===

You can *probably* set up your collaborative research workflow to avoid using branches, but they can make your life a lot
easier. For example, several collaborators could work on code simultaneously, each in their own branch, pushing commits as they
work. No merge conflicts would occur in the primary branch during that time, saving the hassle of resolving many little
conflicts one by one. Then, when everyone is done, they can merge their branches into the primary branch and resolve everything
at once.

Another place where branches are very useful is in software or web development. For example, many R packages (like SESYNC's
[rslurm](https://cyberhelp.sesync.org/rslurm)) are downloadable directly from the GitHub repository. Let's say the developer is
testing out changes that she wants to push to GitHub so that other collaborators can see them, but she doesn't want those
changes to be made to the version that people are actually downloading. Maybe she's not sure if they are good changes or that
they will even work correctly. In that situation, it is ideal to create a branch. If the branch is pushed to the remote, it
will be accessible to other collaborators but not to people that download the primary branch. Another good use case would be if
you have a GitHub Pages site and you are making major changes to the layout that might take days. You don't want people
visiting the site to see the half-finished version --- so if you make the changes in a branch, only you can see them until you
merge it back into the primary branch.
{:.notes}

===

### Creating a branch

You can create a branch from the terminal or point-and-click-style in RStudio. Choose your preferred method.

===

### Branch workflow

1. Create a new branch locally
1. Switch to the new branch locally
1. Make some changes, stage, and commit.
1. Push commits to the remote branch.
1. Repeat 3 and 4 as needed.
1. Merge the branch back into the primary branch.

===

### Create branch locally

Create a new branch in your local repo with the `git branch` command.

~~~bash
git branch my_new_branch
~~~
{:.text-document title="worksheet.sh"}

===

### Switch to the branch

Use `git checkout` to "check out", or switch to, the newly created branch.

~~~bash
git checkout my_new_branch
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Switched to branch 'my_new_branch'
~~~

===

Alternatively, as a shortcut, you can simultaneously create and switch to a new branch this way:

~~~bash
git checkout -b my_new_branch
~~~

===

Make some changes, stage, and commit.

~~~bash
git add /path/to/changed/file
git commit -m "Commit message"
~~~
{:.text-document title="worksheet.sh"}

===

### Sync the branch to the remote repo

We need to add the newly created branch to the origin (remote repo) so that changes we commit and push
are pushed to that branch and not the primary one. Do this using `git push` with the `-u` option,
which is short for `--set-upstream`. It makes sense to give the remote branch the same name as the 
local branch.

~~~bash
git push -u origin my_new_branch
~~~
{:.text-document title="worksheet.sh"}

~~~bash

~~~

Future pushes can be done using only `git push`.

===

You can view all branches, both local and remote, with the `-a` option of `git branch`.

~~~bash
git branch -a
~~~
{:.text-document title="worksheet.sh"}

~~~bash
  master
* my_new_branch
  remotes/origin/HEAD -> origin/master
  remotes/origin/master
  remotes/origin/my_new_branch
~~~

===

You can also view the branches on GitHub. Switch between them with the dropdown menu or 
view, create pull requests, or delete individual branches by clicking on `<n> branches`.

![github branches dropdown]({% include asset.html path="images/github_branch_dropdown.PNG" %})
{:.captioned}


===

### Merge the branch into the primary branch

Once you're happy with the changes you've made, you can merge the branch into the primary branch.

First, switch back to the primary branch on your local machine using `git checkout`.

~~~bash
git checkout master
~~~
{:.text-document title="worksheet.sh"}

===

Next, merge your branch into the primary branch with `git merge`:

~~~bash
git merge my_new_branch
~~~
{:.text-document title="worksheet.sh"}

If there were any conflicts, you'd have to resolve them now.

===

Now you can continue your work in the primary branch. To avoid cluttering up the repo with lots of old branches, 
it's a good idea to delete old unused branches. Use the `-d` option on `git branch`:

~~~bash
git branch -d my_new_branch
~~~
{:.text-document title="worksheet.sh"}

===

The branch still exists on the remote repo on GitHub. You can delete it on the website or from the terminal:

~~~bash
git push --delete my_new_branch
~~~
{:.text-document title="worksheet.sh"}

===

### Point-and-click branching in RStudio

If it's more your style you can use RStudio's GUI for basic branching actions.

Create the branch by clicking "New Branch" on the Git tab in the upper right-hand corner.

![new branch in git tab]({% include asset.html path="images/rstudio_git_tab_newbranch.PNG"  %})
{:.captioned}

===

In the dialog box that appears, enter the new branch name and select the option to 
sync with origin. 

![new branch dialog box]({% include asset.html path="images/rstudio_newbranch_dialogbox.PNG" %})
{:.captioned}

===

This will simultaneously create the branch, switch to the branch, and sync the branch with the remote!

![new branch creation message]({% include asset.html path="images/rstudio_newbranch_created.PNG" %})
{:.captioned}

===

You can switch among branches with the dropdown menu in the Git tab.

![branches dropdown menu]({% include asset.html path="images/rstudio_branch_dropdown.PNG" %})
{:.captioned}

===

Unfortunately it's not possible to merge branches with the point-and-click interface so you are stuck with 
the command line when it's time to `git merge my_new_branch`!

This illustrates that the GUI is really only suitable for simple git actions.

