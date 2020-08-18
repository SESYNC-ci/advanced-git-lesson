---
---

## Branches

A *branch* is a separate "version" of a repo with its own history --- it is not a separate copy, it exists within the repo where it was created.

The expectation here is that you are going to make some changes to temporarily test things out, and then either merge the commits you made in the side branch back into the main branch, or delete/abandon the branch if you don't want to incorporate the changes you made there.
{:.notes}

===

The primary branch, from which side branches are typically made, is called the *master* branch by default, although git and GitHub are going to switch this name to something like "main" or "primary" in future versions. We will call it the *primary* branch.

===

You can *probably* set up your collaborative research workflow to avoid using branches, but they can make your life a lot easier. For example, several collaborators could work on code simultaneously, each in their own branch, pushing commits as they work. No merge conflicts would occur in the primary branch during that time, saving the hassle of resolving many little conflicts one by one. Then, when everyone is done, they can merge their branches into the primary branch and resolve everything at once.

Another place where branches are very useful is in software or web development. For example, many R packages (like SESYNC's [rslurm](https://cyberhelp.sesync.org/rslurm)) are downloadable directly from the GitHub repository. Let's say the developer is testing out changes that she wants to push to GitHub so that other collaborators can see them, but she doesn't want those changes to be made to the version that people are actually downloading. Maybe she's not sure if they are good changes or that they will even work correctly. In that situation, it is ideal to create a branch. If the branch is pushed to the remote, it will be accessible to other collaborators but not to people that download the primary branch. Another good use case would be if you have a GitHub Pages site and you are making major changes to the layout that might take days. You don't want people visiting the site to see the half-finished version --- so if you make the changes in a branch, only you can see them until you merge it back into the primary branch.
{:.notes}

===

