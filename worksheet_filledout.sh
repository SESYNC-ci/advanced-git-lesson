## Branches

git branch my-new-branch

git checkout my-new-branch

# An alternative to the above two lines is:
# git checkout -b my-new-branch

git add /path/to/changed/file
git commit -m "Commit message"

git push -u origin my-new-branch

git branch -a

git checkout master

git merge my-new-branch

git branch -d my-new-branch

git push origin --delete my-new-branch

## Forks

git clone https://github.com/{{ site.data.lesson.example.user }}/fun.git

## Pull Requests

git checkout -b pr_branch master

git pull https://github.com/(collaborator name)/(repo name).git master

git checkout master

git merge --no-ff pr_branch

git push

git branch -d pr_branch

## GitHub Pages

### Personal website
git clone https://github.com/{{ site.data.lesson.example.user }}/{{ site.data.lesson.example.user }}.github.io

### Project page
git checkout -b gh-pages
git pull origin gh-pages --allow-unrelated-histories