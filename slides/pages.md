---
---

## GitHub Pages

GitHub provides free* web hosting through GitHub Pages. You can create a site associated with your user account 
(`{{ site.data.lesson.example.user }}.github.io`) or a page for any of your repos 
(`{{ site.data.lesson.example.user }}.github.io/mycoolproject`). 

\* = *Because GitHub is owned by Microsoft it is not guaranteed that any of the services they provide will be free forever. It is for now.*

===

### How does it work?

**FIXME explain Jekyll here**

===

### Creating a personal site

In this example, we will create a page associated with your user account by forking a pre-made template.

The [Minimal Mistakes theme](https://github.com/mmistakes/minimal-mistakes) is probably the most widely used free template. 
If you use this site template, consider donating to the developer on PayPal.

===

Go to the repo page for Minimal Mistakes on GitHub.com and fork the repo into your account.

In order for GitHub to recognize that this repo is your personal site, you need to change the repo name to 
`(your username).github.io`. This option is at the top of the **Settings** page of your repo.

![change repo name]({% include asset.html path="images/change_repo_name.PNG" %})
{:.captioned}

===

Clone the repo locally.

~~~bash
git clone https://github.com/{{ site.data.lesson.example.user }}/{{ site.data.lesson.example.user }}.github.io
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Cloning into '{{ site.data.lesson.example.user }}.github.io'...
~~~

===

The repo you forked contains a demo site with a number of different types of page layouts.

When you push changes to this repo, the site will rebuild within a minute or two. 
If there are no errors in the build, it will be updated on the server. 
In Exercise 1 below, you will make a change to the homepage and push it.

===

### Creating a project page with a premade template

To make one of your GitHub repos into a page, go to the **Settings** page of your repo and scroll down to the
**GitHub Pages** section.

![github pages settings]({% include asset.html path="images/gh_pages_settings.PNG" %})
{:.captioned}

===

Select a premade Jekyll theme for your page.

This will automatically create a branch called `gh-pages` and open a code editor window for the `index.md` file. This is a Markdown file that Jekyll will render into HTML to become the homepage for your project.

Also, after a few minutes, your site will be live at `{{ site.data.lesson.example.user }}.github.io/projectname`!

![github pages editor window]({% include asset.html path="images/gh_pages_themeset.PNG" %})
{:.captioned}

===

Instead of editing the Markdown online, it's better to pull the `gh-pages` branch locally, make changes, and commit and push them back up to the remote repo. 

Let's use our newfound branching skills to do that!

===

First, go to your terminal, create a branch called `gh-pages` and switch to it.

~~~bash
git checkout -b gh-pages
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Switched to a new branch 'gh-pages'
~~~

===

Next, pull the `gh-pages` branch from the remote origin.

~~~bash
git pull origin gh-pages --allow-unrelated-histories
~~~
{:.text-document title="worksheet.sh"}

~~~bash
 * branch            gh-pages   -> FETCH_HEAD
Merge made by the 'recursive' strategy.
 _config.yml |  1 +
 index.md    | 37 +++++++++++++++++++++++++++++++++++++
 2 files changed, 38 insertions(+)
 create mode 100644 _config.yml
 create mode 100644 index.md
~~~

You need to use the `--allow-unrelated-histories` option or you will get an error. The `gh-pages` branch was created with a fresh history that does not include the old commit history from the master branch.
{:.notes}

===

Now you can make changes locally, commit them, and push them. Every time you do, the project page will rebuild!

In Exercise 2 below, you will collaborate with your partner and both make changes to a project page.

