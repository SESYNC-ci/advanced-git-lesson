---
---

## Branches

A *branch* is a separate "version" of a repo with its own history --- it is not a separate copy, it exists within the repo where it was created.

In the following images, circles represent successive commits through time, going from left to right.
{:.notes}

![]({% include asset.html path="images/atlassian_branches.png" %}){:width="50%" style="border: none; box-shadow: none;"}  
*Two branches created from the main branch, each with their own commit history. [Image][using-branches] by Atlassian / [CC BY]*
{:.captioned}

The expectation is that you are going to make some changes to temporarily test things out, and then either merge the
commits you made in the side branch back into the main branch, or delete/abandon the branch if you don't want to incorporate
the changes you made there.
{:.notes}

===

The primary branch, from which side branches are typically made, is called the `main` branch by default.

This default applies if the repo was created on GitHub after October 1, 2020. 
In older repos or repos that you create locally with the command-line git client or the RStudio project interface,
this branch is called `master`. This is a positive change, signaling that GitHub is committed to inclusion, 
but do be aware that it may cause conflicts depending on where you create your repos.
Also be aware of this when reading documentation, tutorials, or StackOverflow posts written before 2020.
{:.notes}

![]({% include asset.html path="images/atlassian_merge_before.png" %}){:width="50%" style="border: none; box-shadow: none;"}  
*The main and feature branch have a common base but different tips (current states). [Image][using-branches] by Atlassian / [CC BY]*
{:.captioned}

*A clarifying note*: The distinction between, on the one hand, local versus remote (origin) and, on the other hand, 
the main branch versus other branches can be confusing at first. You can have multiple branches on both the
local and remote copies of the repository. The local and remote branches are not necessarily the same. 
But if you want to push to, or pull from, the remote, the
default will be the main branch unless you specify which branch you are pushing, or pulling.
{:.notes}

===

When you are finished working in a branch, you can merge the branch back into the main branch.
This will incorporate the work you've done into the "official" version of the repository.

![]({% include asset.html path="images/atlassian_merge_after.png" %}){:width="50%" style="border: none; box-shadow: none;"}  
*A merge commit joins the feature branch back to the main branch. [Image][using-branches] by Atlassian / [CC BY]*
{:.captioned}

===

### Use cases for branches

- **Making your collaborative workflow smoother** 

If several collaborators are working on code simultaneously, 
each one can create their own branch, pushing commits as they work. 
No merge conflicts would occur in the main branch during that time, saving the hassle of resolving many little
conflicts one by one. When everyone is done, they merge their branches into the main branch and resolve everything at once.
{:.notes}

- **Making pull requests**

Suggesting a change to someone else's repo, whether it's your collaborator's repo or someone else's, 
requires you to create a branch and make a *pull request* from that branch. 
We will cover pull requests in depth later on in this lesson.
{:.notes}

- **Testing code in software and web development**

For example, many R packages are downloadable directly from the GitHub repository. 
Let's say the developer is testing out changes that she wants to push to GitHub so that other collaborators can see them. 
In that situation, it is ideal to create a branch. If the branch is pushed to the remote, it
will be accessible to other collaborators but not to people that download the main branch. 
It's also a good idea to use branches to test out changes to websites hosted on GitHub Pages before going live.
{:.notes}

===

### Branch workflow

1. Create a new branch locally
1. Switch to the new branch locally.
1. Push the local branch to the remote repo.
1. Make some changes, stage, commit, and push (repeat as needed).
1. Merge the branch back into the main branch.

First, let's practice a basic branch workflow using the command line.

===

### Create a repository

If you don't have a repo to practice on, go ahead and create one.
Your choices are to create a repo locally and then push the repo to the remote (GitHub), 
or to create the repo remotely on GitHub and then clone it locally.
You should know how to do either of those things from the basic git lesson, but here we
will quickly review how to create the repo remotely and clone it locally.

===

To create the repo remotely, follow these steps:

- Create a user account on GitHub.com if you don't already have one.
- Create the repo by clicking on "New" on your Repositories tab on your GitHub user page.
- Give the repo a name and **check the box to initialize the repo with a README.md file**.

===

Open a terminal on your local machine and clone the new repo to the home directory.

**Important**: Make sure you `cd` to the directory where you want to clone the repo before cloning.
You don't want to have repo folders nested inside each other!
{:.notes}

~~~bash
git clone https://github.com/(your username)/(the repo name).git
~~~
{:.text-document title="worksheet.sh"}

===

In RStudio, an alternative to the command above is to
clone the repo into a new RStudio project by going to 
`File > New Project > Version Control` and entering the repo URL. 

This will integrate version control with RStudio's project structure.
If there are no `.Rproj` or `.gitignore` files in the repo you are cloning, this will create them.
{:.notes}

![RStudio three steps to create project]({% include asset.html path="images/threesteps_newproj.png" %})
*These are the three steps to follow to clone the project with RStudio's dialog.*
{:.captioned}

===

### Create branch locally

You can create a branch from the terminal or point-and-click-style in RStudio. We'll start by using the terminal.

Create a new branch in your local repo with the `git branch` command.
Give it a name with only letters, numbers, and hyphens (no spaces, because it will be part of a URL).

~~~bash
git branch my-new-branch
~~~
{:.text-document title="worksheet.sh"}

===

### Switch to the branch

Use `git checkout` to "check out", or switch to, the newly created branch.

~~~bash
git checkout my-new-branch
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Switched to branch 'my-new-branch'
~~~

===

Alternatively, as a shortcut, you can simultaneously create and switch to a new branch this way:

~~~bash
git checkout -b my-new-branch
~~~

If there are already multiple branches, you can specify the branch from which you want to create your new branch: 
`git checkout -b my-new-branch an-old-branch`. If you do not specify, the branch is created from the branch you are 
currently in (which usually defaults to the `main` branch).
{:.notes}

===

### Push the local branch to the remote repo 

We need to add the newly created branch to the origin (remote repo) so that changes we commit and push
are pushed to that branch and not `main`. Do this using `git push` with the `-u` option,
which is short for `--set-upstream`. It makes sense to give the remote branch the same name as the 
local branch.

~~~bash
git push -u origin my-new-branch
~~~
{:.text-document title="worksheet.sh"}

===

You will see this at the bottom of the output:

~~~bash
 * [new branch]      my-new-branch -> my-new-branch
Branch my-new-branch set up to track remote branch my-new-branch from origin.
~~~

Now that the local branch is set up to track the remote branch with the same name,
future pushes can be done using only `git push`.

===

Make some changes, stage, commit, and push.

You can simply say `git push` and it will push to `my-new-branch` on the remote. (This is equivalent to saying `git push origin my-new-branch`.)
{:.notes}

~~~bash
git add /path/to/changed/file
git commit -m "Commit message"
git push
~~~
{:.text-document title="worksheet.sh"}

===

You can view all branches, both local and remote, with the `-a` option of `git branch`.
The asterisk indicates the branch you are in locally.

~~~bash
git branch -a
~~~
{:.text-document title="worksheet.sh"}

~~~bash
  main
* my-new-branch
  remotes/origin/HEAD -> origin/main
  remotes/origin/main
  remotes/origin/my-new-branch
~~~

===

You can also view the branches on GitHub. Switch between them with the dropdown menu or 
view, create pull requests, or delete individual branches by clicking on "View all branches."

![github branches dropdown]({% include asset.html path="images/github_branch_dropdown.PNG" %}){:width="50%" style="border: none; box-shadow: none;"}  
{:.captioned}


===

### Merge the branch into the main branch

Once you're happy with the changes you've made, you can merge the branch into `main`.

First, switch back to the main branch on your local machine using `git checkout`.

~~~bash
git checkout main
~~~
{:.text-document title="worksheet.sh"}

===

Next, merge your branch into the main branch with `git merge`:

~~~bash
git merge my-new-branch
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Fast-forward
 README.md | 4 ++++
 1 file changed, 4 insertions(+)
~~~

This will do a "fast-forward," meaning that we skip the merging step because there are no conflicts between the two branches.
If there were any conflicts, you'd have to resolve them first.

===

Push the main branch, with its newly merged commit, to the remote.

~~~bash
git push
~~~
{:.text-document title="worksheet.sh"}

===

Now you can continue your work in the main branch. To avoid cluttering up the repo with lots of old branches, 
it's a good idea to delete old unused branches. Use the `-d` option on `git branch`:

~~~bash
git branch -d my-new-branch
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Deleted branch my-new-branch (was f06a00c)
~~~

Sometimes you will get a warning if the branch you are deleting has not been fully merged.
You can override this warning and delete an unmerged branch by replacing the `-d` with `-D`,
as in `git branch -D my-new-branch`.
{:.notes}

===

The branch still exists on the remote repo on GitHub. You can delete it on the website or from the terminal:

~~~bash
git push origin --delete my-new-branch
~~~
{:.text-document title="worksheet.sh"}

~~~bash
 - [deleted]         my-new-branch
~~~

*Note*: You can also merge newer changes from the main branch into a side branch. 
Just do the opposite of the above `git checkout` and `git merge` steps: 
first checkout the side branch and then `git merge main`.
{:.notes}

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

This will simultaneously create the branch, switch to the branch, and set up the local branch to track a remote branch!

![new branch creation message]({% include asset.html path="images/rstudio_newbranch_created.PNG" %})
{:.captioned}

===

You can switch among branches with the dropdown menu in the Git tab.

![branches dropdown menu]({% include asset.html path="images/rstudio_branch_dropdown.PNG" %})
{:.captioned}

===

Unfortunately it's not possible to merge branches with the point-and-click interface so you are stuck with 
the command line when it's time to `git merge my-new-branch`!
(This illustrates that the GUI is really only suitable for simple git actions.)

[using-branches]: https://www.atlassian.com/git/tutorials/using-branches/
[CC BY]: http://creativecommons.org/licenses/by/2.5/au/