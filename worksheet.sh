## Branches

# Creating branch
git branch ...
git ...

# An alternative to the above two lines is:
# git checkout -b my-new-branch

git push -u ...

# Staging, committing, and pushing changes to branch
git add ...
git ...
...

git branch ...

# Merging branch and cleanup
git ...
git ... my-new-branch
git push

git ... my-new-branch
git push ... my-new-branch

## Forks

# Use the git clone command, or if you prefer use the "New project" dialog in RStudio
git clone ...

## Pull Requests

# Owner: clone the repo you created, if you have not already done so (or use "New project" dialog in RStudio)
git clone ...

# Collaborator: clone repo, or use RStudio "New project" dialog 
git ...

# Collaborator: stage, commit, and push
git add ...
git ...
git push


# Owner: pull the PR branch locally
git checkout -b ...

git ... https://github.com/... main

# Owner: merge the PR branch and cleanup
git ...
git ...
git ...
git branch ...

## GitHub Pages

### Personal website

# Clone the repo or use RStudio "New project" dialog
git clone ...

... _config.yml
... "Add site title to config"
...

### Project page
git checkout ...
git ... gh-pages --allow-unrelated-histories
