# Mary feedback on lesson

## Intro

- git branch images early in lesson need to have captions because they contain terminology such as "tips" that isn't explained in the text of the lesson.

## Branches

- ~~"set up a local branch to track remote branch" is included in the bulleted list without explaining what that is.~~
- ~~There are cases where you might not want to merge the branch into the master.~~ Decided not to say this because most uses that these folks will have will end up merging the branch.

## Forks

- Note that you need to switch directories out of the current repo folder, before you clone the fork locally. Either close the project or move to another directory.

## Pull requests

- The screenshot of pull request shows the wrong thing
- ~~Say to click on "new pull request"~~
- ~~You might have to select "compare across forks" to get the correct branches to appear~~
- You do not necessarily get an email when someone makes a PR on your repo (can set it to do so)
- change the wording on "your options are" so that it's clear that the options are not some menu that pops up.
- Here and elsewhere, note that if you do the merges from Rstudio, you will get a dialog that pops up in Vim for you to explain why the merge is necessary.
- Reword the part about merging as owner. (I forget what we were talking about here)
- Collaborator will get an email when the PR is merged.
- Note that you can also create a PR to pull newer changes from the original repo if you are the Collaborator
- Show how to merge the PR on GitHub with point and click style.

## Issues

- get rid of the fixme line

## Pages

- in between creating the user page and the private page you need to cd back to the root directory so the project page is not created in the wrong place.
- If you make a project, go to new project --> existing working directory
- Get rid of all references to Minimal Mistakes!!!
- Don't hit "preview" because you will get a page that should not show up
- Issues setting up Jekyll?

## Exercises

- the git pull will have to pull origin gh-pages in exercise 2
- git branch -D capital D is needed to get rid of the branch
- you can go to your own version of the page on github.com to make the PR