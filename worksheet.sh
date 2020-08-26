## Branches

# Creating branch
git branch ...
git ...

# An alternative to the above two lines is:
# git checkout -b my-new-branch

# Staging, committing, and pushing changes to branch
git add ...
git ...
git push -u ...

git branch ...

# Merging branch and cleanup
git ...
git ... my-new-branch

git ... my-new-branch
git push ... my-new-branch

## Forks

git clone ...

## Pull Requests

# Owner: pull the PR branch locally
git checkout -b ...

git ... https://github.com/... master

# Owner: merge the PR branch and cleanup
git ...
git ... --no-ff ...
git ...
git branch ...

## GitHub Pages

### Personal website
git clone ...

### Project page
git checkout ...
git ... gh-pages --allow-unrelated-histories
