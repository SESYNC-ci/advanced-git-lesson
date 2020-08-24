## Branches

git branch my_new_branch

git checkout my_new_branch

# An alternative to the above two lines is:
# git checkout -b my_new_branch

git add /path/to/changed/file
git commit -m "Commit message"

git push -u origin my_new_branch

git branch -a

git checkout master

git merge my_new_branch

git branch -d my_new_branch

git push origin --delete my_new_branch

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