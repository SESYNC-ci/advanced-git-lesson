# Git Whirlwind

Outline notes

- Begin with basic git lesson and/or git in the shell lesson
- git for research
	- issues (GitHub)
	- clones and forks
	- branches
	- pull requests
	- highlight use cases for research, versus software development
	- Other topics?
- Github Pages lesson
	- creating a Github page
	- building with Jekyll and/or Hugo
	- Walk through creating a repo with a blank github page. Add some content to it. 

## Learning activities

Advanced git for research

- Clone a repository
- Fork a repository, make a commit, make a pull request, and the owner of the repository can accept the pull request and pull down. May or may not include a merge conflict.
- Create a branch in a repository, make a change, push it to the remote, merge it there, then pull it back down. Again, may or may not include a merge conflict.

GitHub pages

- Create your "user" github page. Do this by "forking" an existing repository.
- Create a github page for a project you have. Either create one for an existing project, or one for a fake project created for the nonce.
- Make some changes to the config YAML file, commit, and push them.
- Add a page, linking to it from the homepage, commit, and push.

## Why do I care?

It's important to note that a lot of these procedures are more important for software development than for research purposes. In software (or website) development, you have to be very careful about making unnecessary changes that might break the code and render everything useless. However, if you are doing exploratory statistical analysis, there is usually no harm in adding extra scripts to a repository or tacking on a few more lines to make another figure or exploratory data summary --- you can't really break other code that way. So if most of what you do is data analysis and you aren't really programming, some of the advanced topics we're going to cover might not really be that useful. 95% of what you need to do can be accomplished with stage, commit, push, pull, and the occasional resolving of a merge conflict.

With all of that said, though, even if you rarely or never use some of these techniques, it is helpful just to be exposed to them and know the lingo. You may run across these terms being used and it is good to have some idea of what's going on.

## Github issues

Use cases:

- To make a note for yourself to do something
- To raise an issue in someone else's repository
- Enables you to have rich information about what's done



## Cloning and forking

To *clone* a repository is to make an exact copy of it on your local drive. The expectation is that you and your collaborators will constantly push and pull, keeping the repository and its history in the same state as you progress in your work.
If you and collaborator(s) are working together on a project, you would create clones of the primary repository.

To *fork* a repository begins the same way, with an exact copy on your local drive. However, the expectation is that your repository will diverge in its history. You probably aren't collaborating directly with the creator of the repository. They may continue to make updates, adding commits to their version's history, while you do the same. A good example would be if you are making a GitHub page, and you want to use a premade theme.

Later, you can pull from their repository again to incorporate their new commits, but this is very likely to cause merge conflicts if you have made changes to the same parts of the same scripts that they have. If you want the creator of the repository to incorporate the changes you've made into their repository (for example, if you have written some additional functions for an R package), you can make a *pull request* on GitHub. See below.

## Branches

A *branch* is distinct from a clone or a fork. It is not a separate copy of a repository, it exists within the same repo where it was created. However, it can have its own diverging commit history. The primary branch from which other branches are typically made is called "master" by default, although git and GitHub are going to switch this name to something like "main" or "primary" in future versions. The expectation here is that you are going to make some changes to temporarily test things out, and then either merge the commits you made in the side branch back into the main branch, or delete/abandon the branch if you don't want to incorporate the changes you made there.

Again, it's rare that you would need to use branches for a typical research workflow. They are very useful in software and web development. For example, the rslurm package is downloadable directly from the GitHub repository. Let's say I'm testing out changes that I want to push to GitHub so that other collaborators can see them, but I don't want those changes to be made to the version that people are actually downloading (because maybe I'm not sure if they are good changes or that they will even work correctly). In that situation, it is ideal for me to create a branch. If I push that branch to the remote, it will be accessible to other collaborators but not to people that download the primary branch. Another good use case would be if you have a GitHub Pages site and you are making major changes to the layout that might take days. You don't want people visiting the site to see the half-finished version --- so if you make the changes in a branch, only you can see them until you merge it back into the primary branch.

The distinction between local vs remote (origin) and primary branch versus other branches can be confusing at first --- it was to me. You can have multiple branches on both the local and remote copies of the repository. They need not be the same. But if you want to push to, or pull from, the remote, the default will be the primary (master) branch unless you specify which branch you are pushing, or pulling.

## Pull request

A pull request is just what it says it is: a *request* that the owner of a repo *pull* your changes, incorporating them into his or her repo. You create pull requests on github.com.