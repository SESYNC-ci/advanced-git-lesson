---
---

## GitHub Pages

GitHub provides free* web hosting through GitHub Pages. You can create a site associated with your user account 
(`{{ site.data.lesson.example.user }}.github.io`) or a page for any of your repos 
(`{{ site.data.lesson.example.user }}.github.io/mycoolproject`). 

\* = *Because GitHub is owned by Microsoft it is not guaranteed that any of the services they provide will be free forever. It is for now.*

===

### How does it work?

When you designate a repo as a page, GitHub will build the Markdown (`.md`) files in the repo into
HTML files, creating a complete static site, using software called [Jekyll](https://jekyllrb.com/).

Note that you can also create the HTML pages yourself, either by using RStudio to knit your
Markdown or RMarkdown files to HTML, or manually.

There are many ways to customize the layout and theme of your page. This lesson does not go into
much detail about that. The first place to look for more information is 
[the official GitHub Pages documentation](https://docs.github.com/en/github/working-with-github-pages). 
We have also compiled [a list of resources, tutorials, and templates](https://github.com/SESYNC-ci/sesync-ci.github.io/blob/master/blog/_drafts/github-pages-resources.md).
{:.notes}

<!-- Replace the link to draft blog post with a real one when it's made -->

All the [SESYNC cyberhelp lesson pages](https://cyberhelp.sesync.org/lesson/) were created with GitHub Pages, 
including this one! 
The [homepage of the popular R package sf](https://r-spatial.github.io/sf/) is also a GitHub Page,
as are [this collection of R stats tutorials](https://tinystats.github.io/teacups-giraffes-and-statistics/index.html)
and many academic pages including [this lab website](http://nelson.rbind.io/).
{:.notes}

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

Clone the repo locally, either using the command below or by creating an RStudio project.

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

In addition to your personal site at `username.github.io`, you can also make pages associated with your
individual projects on GitHub.

To make one of your GitHub repos into a page, go to the **Settings** page of your repo and scroll down to the
**GitHub Pages** section.

![github pages settings]({% include asset.html path="images/gh_pages_settings.PNG" %})
{:.captioned}

===

Select a premade Jekyll theme for your page.

This will automatically create a branch called `gh-pages` and open a code editor window for the `index.md` file. This is a Markdown file that Jekyll will render into HTML to become the homepage for your project.

Also, after a few minutes, your site will be live at `username.github.io/reponame`!

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

