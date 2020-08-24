---
---

## Pull Requests

A **pull request** (PR for short) is just that: a *request* that the owner of a repo 
*pull* your changes, incorporating them into his or her repo. 

===

For this part of the lesson, there are two roles, the **Owner** and **Collaborator**. Find a partner, 
and go through this exercise twice, each time taking a different role. 

The **Collaborator** will make the PR and the **Owner** will modify, then accept it.

===

**Owner**: For this exercise, feel free to let the Collaborator fork one of your existing repos.
If you don't have a repo you own to practice on, quickly create one on GitHub.com.

Make sure it is a public repo so that the Collaborator can clone it. However, you do not need to 
give the Collaborator push access.

Initialize the created repo with a README.md to give the Collaborator something to work with.

![initialize repo dialog box]({% include asset.html path="images/create_new_repo_for_pr.PNG" %}){:width="60%"}
{:.captioned}

===

**Collaborator**: Fork the Owner's repo and clone it locally (because now you know how to do that!)

Now make a change to the README.md. Stage, commit, and push (old hat by now!)

The change you've pushed is now part of your forked copy of the repo, but is not
yet incorporated into the Owner's repo. Time to make a pull request.

===

**Collaborator**: Go to the "Pull Requests" tab in the Owner's repository. You should see something like this.

![pull request page]({% include asset.html path="images/pullrequest_forkedrepo.png" %})
{:.captioned}

===

**Collaborator**: Specify that you want to compare the `master` branch of your forked repository 
with the `master` branch of the current repository, then click "Create pull request."

![pull request compare step]({% include asset.html path="images/pullrequest_compare.png" %})
{:.captioned}

===

That's it, you've just made a pull request!

You have made a request for the **Owner** of the repo to review the commits you've made to the code, 
in the hope that he or she will accept the request and add your changes to the primary official version of the repo.

===

**Owner**: As the owner, you will receive an email saying that someone has made a pull request on your repo. 

Your options are:

- Accept the pull request as is
- Make additional changes to the pull request and then accept
- Decline the pull request

===

**Owner**: Even though the PR page shows that there are no conflicts, it is good practice to test the 
code before accepting and merging the PR. To do this, you need to create a new branch locally for 
the PR, and then pull the Collaborator's changes into that local branch.

We will follow the command line instructions that GitHub helpfully provides.
First create a new branch and switch to it.

~~~bash
git checkout -b pr_branch master
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Switched to a new branch 'pr_branch'
~~~

===

**Owner**: Pull the Collaborator's changes from the primary branch of their forked version
of the repo into the newly created branch.

~~~bash
git pull https://github.com/(collaborator name)/(repo name).git master
~~~
{:.text-document title="worksheet.sh"}

===

After you have tested the code, you can accept the PR by merging the changes from the command line.

**Owner**: Checkout your master branch again and merge the PR branch into it. The `--no-ff` flag ensures
that git will create a merge so that it's obvious later on that a pull request was made.

~~~bash
git checkout master
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Switched to branch 'master'
Your branch is up to date with 'origin/master'.
~~~

~~~bash
git merge --no-ff pr_branch
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Merge made by the 'recursive' strategy.
 README.md | 2 ++
 1 file changed, 2 insertions(+)
~~~

~~~bash
git push
~~~
{:.text-document title="worksheet.sh"}

===

**Owner**: Go back to GitHub.com and view the PR page. You should see that the PR was automatically
closed once you merged the changes into your primary branch. It will be listed under the closed 
pull requests.

![pull request page]({% include asset.html path="images/closed_prs.PNG" %}){:width="60%"}
{:.captioned}

The commits made by your collaborator, and the modifications you made on top of them, are both part of 
the primary branch of the repo. 

===

You can delete the PR branch locally if you like:

~~~bash
git branch -d pr_branch
~~~
{:.text-document title="worksheet.sh"}

~~~bash
 - [deleted]         pr_branch
~~~

===

**Collaborator**: Now that the owner has merged your PR with the primary branch on his or her repo,
you can pull and check out that primary branch. You can continue to periodically pull the owner's
new commits to your local repo.

===

Halftime! Switch sides!

Trade places with your partner and repeat the exercise.
