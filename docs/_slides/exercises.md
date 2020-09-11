---
---

## Exercises

These exercises will give you a chance to practice the advanced git techniques you learned in this lesson,
(branches, forks, and pull requests), using GitHub Pages as an example.

### Exercise 1

- Create a local branch in your GitHub Pages repo (`yourname.github.io`).
- Edit the `index.md` file to say something about yourself.
- When you are satisfied, stage, commit, and push the change to the branch on the remote origin.
- Merge the branch back into the master branch and push the master branch to the remote.
- Take a look at your newly modified site!
- If you like, delete the test branch locally and remotely.

### Exercise 2

This exercise should be done in pairs. Take turns being the Owner and Collaborator.

**Collaborator**: 

- Fork the Owner's repo in which he or she created the GitHub Page at the end of this lesson. 
- Clone the forked repo locally.
- Create another branch *from the* `gh-pages` *branch*, switch to it, and set it up to track a remote branch.
- Make a change to the homepage of the repo (`index.md`) in that branch.
- Stage, commit, and push.
- Make a pull request from the branch you just modified, comparing to the `gh-pages` branch on the Owner's repo.

**Owner**:

- Create a new local branch and pull the Collaborator's pull request branch into it.
- Review the changes the Collaborator made, modifying if necessary by adding additional commits. 
*Note: if you want to add commits to the Collaborator's branch, the Collaborator will have to give you push access to it on GitHub.*
- Accept the pull request on GitHub, merging the Collaborator's branch with your `gh-pages` branch.
- Pull the newly merged `gh-pages` branch locally.
- Take a look at your newly modified project page!
- If you like, delete the pull request branch locally.

## Solutions

### Exercise 1

- In the repo you created for your personal GitHub Page (`yourname.github.io`), execute `git checkout -b (name of new branch)`.
- Open `index.md` and add some text.
- Stage, commit, and push: 

```
git add index.md
git commit -m "Add content"
git push -u origin (name of new branch)
```

- Merge the branch into the master branch and push to the remote.

```
git checkout master
git merge (name of new branch)
git push -u origin master
```

- Delete the now-merged branch on your local machine and remotely.

```
git branch -d (name of new branch)
git push origin --delete (name of new branch)
```

### Exercise 2

**Collaborator**:

- Navigate to `https://github.com/(username of owner)/(name of repo)` and select "Fork" in the upper right to fork the 
repo into your own account.
- Clone the repo by going to your terminal locally and executing `git clone https://github.com/(your username)/(name of repo).git`.
- Create the branch, specifying that you are creating it from `gh-pages`, and set it up to track the remote.

```
git checkout -b (name of new branch) gh-pages
git push -u origin (name of new branch)
```

- Edit the file `index.md`.
- Stage, commit, and push:

```
git add index.md
git commit -m "Edit index.md"
git push
```

- Navigate to `https://github.com/(your username)/(name of repo)` and open the "Pull Requests" tab.
- When prompted to select branches to compare (across forks), select your new branch and the Owner's `gh-pages` branch.

**Owner**:

- To create a new branch and pull the Collaborator's pull request branch into it, run:

```
git checkout -b collab-pullrequest-branch
git pull https://github.com/(collaborator name)/(repo name).git (name of pull request branch)
```

- Open and view `index.md`. If you want to add a commit to this, you can do so by having the Collaborator go to the
page on github.com for their forked repo, open the "Settings" tab, click "Manage access", and invite you with 
the proper permissions. Then you can edit the file and stage-commit-push as usual.
- Navigate to `https://github.com/(username of owner)/(name of repo)` and open the "Pull Requests" tab.
- Accept the pull request through the interface on the website.
- Pull the `gh-pages` branch locally because you merged on the website:

```
git checkout gh-pages
git pull origin gh-pages
```

- Delete the pull request branch locally using `git branch -D collab-pullrequest-branch`. 
(The `-D` is needed to confirm that you are deleting an unmerged branch, because you merged it remotely not locally.)
