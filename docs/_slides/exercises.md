---
---

## Exercises

These exercises will give you a chance to practice the advanced git techniques you learned in this lesson,
(branches, forks, and pull requests), using GitHub Pages as an example.

### Exercise 1

- Create a local branch in your GitHub Pages repo (`yourname.github.io`).
- Edit the `docs/_config.yml` file to change the title and base URL of the site.
- Edit the `docs/_pages/about.md` file to replace some of the demo text with your own text.
- Preview the HTML using the "Preview" button at the top of the code editor pane in RStudio.
- When you are satisfied, stage, commit, and push the change to the branch on the remote origin.
- Merge the branch back into the master branch and push the master branch to the remote.
- Take a look at your newly modified site!
- If you like, delete the test branch locally and remotely.

### Exercise 2

This exercise should be done in pairs. Take turns being the Owner and Collaborator.

**Collaborator**: 

- Fork the Owner's repo in which he or she created the GitHub Page at the end of this lesson. 
*Make sure you fork the* `gh-pages` *branch!*
- Create another branch, switch to it, and set it up to track a remote branch.
- Make a change to the homepage of the repo (`index.md`) in that branch.
- Stage, commit, and push.
- Make a pull request from the branch you just modified, comparing to the `gh-pages` branch on the Owner's repo.

**Owner**:

- Create a new local branch and pull the Collaborator's pull request branch into it.
- Review the changes the Collaborator made, modifying if necessary by adding additional commits. 
*Note: if you want to add commits to the Collaborator's branch, the Collaborator will have to give you push access to it on GitHub.*
- Accept the pull request on GitHub, merging the Collaborator's branch with your `gh-pages` branch.
- Take a look at your newly modified project page!
- If you like, delete the pull request branch locally and remotely.
