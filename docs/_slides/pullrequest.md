---
---

## Pull Requests

A **pull request** (PR for short) is just that: a *request* that the owner of a repo 
*pull* your changes, incorporating them into his or her repo. 

You can make a pull request to any public repo on GitHub, even if you don't have push access to the repo. 
In contrast, if you are a collaborator on a repo who has write access, you can push commits without making pull requests. However, it is often a good idea to make a pull request anyway, instead of pushing directly. This is a more respectful way
to contribute to a project because it gives the repo owner a chance to review your changes and approve them.
{:.notes}

===

For this part of the lesson, there are two roles, the **Owner** and **Collaborator**. Find a partner, 
and go through this exercise twice, each time taking a different role. 

The **Collaborator** will make the PR and the **Owner** will modify, then accept it.

===

**Owner**: For this exercise, feel free to let the Collaborator fork one of your existing repos.
If you don't have a repo you own to practice on, quickly create one on GitHub.com.

Make sure it is a public repo so that the Collaborator can clone it. However, you do not need to 
give the Collaborator push access.

===

Initialize the created repo with a README.md to give the Collaborator something to work with.

![initialize repo dialog box]({% include asset.html path="images/create_new_repo_for_pr.PNG" %}){:width="60%"}
{:.captioned}

===

If you haven't already, clone the repo locally, either with the command line or using the "New Project" dialog in RStudio.

As before, make sure you `cd` to the right directory before cloning so you don't get nested repos!
{:.notes}

~~~bash
git clone https://github.com/(owner name)/(repo name).git
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Cloning into 'repo name'...
~~~

===

**Collaborator**: Fork the Owner's repo (on GitHub.com) and then clone it locally.

As before, you can either do this from the command line with the command below, or with the "New project" dialog.

~~~bash
git clone https://github.com/(collaborator name)/(repo name).git
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Cloning into 'repo name'...
~~~

===

Now make a change to the README.md. Stage, commit, and push.

~~~bash
git add README.md
git commit -m "Edit README.md"
git push
~~~
{:.text-document title="worksheet.sh"}

The change you've pushed is now part of your forked copy of the repo, but is not
yet incorporated into the Owner's repo. Time to make a pull request.

===

**Collaborator**: Go to the "Pull Requests" tab in the Owner's repository. You should see something like this.
Click on "New pull request."

![pull request page]({% include asset.html path="images/pullrequest_forkedrepo.png" %})
{:.captioned}

===

**Collaborator**: Specify that you want to "compare across forks." You are making a PR
from your fork to the Owner's repo, rather than across branches within the same copy of the repo.
Compare the `main` branch of your fork 
with the `main` branch of the current repository, then click "Create pull request."

![pull request compare step]({% include asset.html path="images/pullrequest_compare.png" %})
{:.captioned}

===

That's it, you've just made a pull request!

You have made a request for the **Owner** of the repo to review the commits you've made to the code, 
in the hope that he or she will accept the request and add your changes to the primary official version of the repo.

===

**Owner**: As the owner, you will receive an email saying that someone has made a pull request on your repo. 

By default you are "watching" any repo you create, meaning you will receive emails for new pull requests and new issues.
You can disable this by selecting "Unwatch" in the upper right of the repo page on GitHub.
{:.notes}

===

When you receive a pull request, you can do one of the following:

- Accept the pull request as is
- Make additional changes to the pull request and then accept
- Decline the pull request

In this example, we will simulate accepting the pull request without any additional modifications.

===

**Owner**: Even though the PR page shows that there are no conflicts, it is good practice to review the 
code before accepting and merging the PR. To do this, you need to create a new branch locally for 
the PR, and then pull the Collaborator's changes into that local branch.

===

We will follow the command line instructions that GitHub helpfully provides.
First create a new branch locally and switch to it.

~~~bash
git checkout -b pr-branch
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Switched to a new branch 'pr-branch'
~~~

===

Pull the changes from the main branch of the Collaborator's forked version
of the repo into the newly created branch.

~~~bash
git pull https://github.com/(collaborator name)/(repo name).git main
~~~
{:.text-document title="worksheet.sh"}

===

After you have reviewed the code, accept the PR. There are two different ways to do this.
You can either merge the PR into your main branch locally and then push to the remote,
or you can merge the PR into your main branch on the remote repo on GitHub, and then pull
the merged main branch locally.

In this example you will  merge the PR locally and push to the remote.

===

**Owner**: Checkout your main branch again.

~~~bash
git checkout main
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Switched to branch 'main'
Your branch is up to date with 'origin/main'.
~~~

===

Merge `pr-branch` into the `main` branch, then push to the remote.

~~~bash
git merge pr-branch
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Fast-forward
 README.md | 2 ++
 1 file changed, 2 insertions(+)
~~~

~~~bash
git push
~~~
{:.text-document title="worksheet.sh"}

===

**Owner**: Go back to GitHub.com and view the PR page. You should see that the PR was automatically
closed once you merged the changes into your main branch. It will be listed under the closed 
pull requests.

![pull request page]({% include asset.html path="images/closed_prs.PNG" %}){:width="60%"}
{:.captioned}

===

The commits made by your collaborator, and any modifications you may have made on top of them, 
are both part of the main branch of the repo. 

An alternative to the above is to merge the pull request on GitHub.com (follow the point-and-click
instructions), then `git pull` into your main branch locally to get the merged changes.
{:.notes}

===

You can delete the PR branch locally if you like:

~~~bash
git branch -d pr-branch
~~~
{:.text-document title="worksheet.sh"}

~~~bash
 - [deleted]         pr-branch
~~~

===

**Collaborator**: Now that the owner has merged your PR with the main branch on his or her repo,
you should receive an email notifying you that your PR was merged.

===

Your repo should now be up to date with the Owner's. However, in the future, if you want
to pull new changes from the main branch of the Owner's repo into your forked repo, you
need to specify that you are pulling from the Owner's repo in your call to `git pull`.

~~~bash
git pull https://github.com/(name of owner)/(name of repo).git main
~~~

You will be prompted to resolve merge conflicts if any exist.

===

Halftime! Switch sides!

Trade places with your partner and repeat the exercise.
