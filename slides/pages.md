---
---

## GitHub Pages

GitHub provides free* web hosting through GitHub Pages. You can create a site associated with your user account 
(`{{ site.data.lesson.example.user }}.github.io`) or a page for any of your repos 
(`{{ site.data.lesson.example.user }}.github.io/mycoolproject`). 

\* *Because GitHub is owned by Microsoft it is not guaranteed that any of the services they provide will be free forever. It is for now.*

===

### How does it work?

When you designate a repo as a page, GitHub will build the Markdown (`.md`) files in the repo into
HTML files, creating a complete static site, using software called [Jekyll](https://jekyllrb.com/).

Note that you can also create the HTML pages yourself, either by using RStudio to knit your
Markdown or RMarkdown files to HTML, or manually.

There are many ways to customize the layout and theme of your page. This lesson does not go into
much detail about that. The first place to look for more information is 
[the official GitHub Pages documentation](https://docs.github.com/en/github/working-with-github-pages). 
We have also compiled [a list of resources, tutorials, and templates](https://cyberhelp.sesync.org/blog/github-pages-resources.html).
{:.notes}

The [Minimal Mistakes theme](https://github.com/mmistakes/minimal-mistakes) is one of the most widely used free templates. 
You can fork the Minimal Mistakes repo into your account and add your content to it.
[Academic Pages](https://github.com/academicpages/academicpages.github.io) is a modified version of Minimal Mistakes 
that is designed for academics.
If you use either of these templates, consider donating to the developer on PayPal.
{:.notes}

All the [SESYNC cyberhelp lesson pages](https://cyberhelp.sesync.org/lesson/) were created with GitHub Pages, 
including this one! 
The [homepage of the popular R package sf](https://r-spatial.github.io/sf/) is also a GitHub Page,
as are [this collection of R stats tutorials](https://tinystats.github.io/teacups-giraffes-and-statistics/index.html)
and many academic pages including [this lab website](http://nelson.rbind.io/).
{:.notes}

===

### Creating a personal site

In this example, we will create a page associated with your user account.

Create a new repo on GitHub.com. In order for GitHub to recognize that this repo is your personal site, 
you need to name it `(your username).github.io`. 

===

Next, go to the **Settings** page of your repo and scroll down to the
**GitHub Pages** section.

![github pages settings]({% include asset.html path="images/gh_pages_settings.PNG" %})
{:.captioned}

===

Choose a pre-made Jekyll theme for your personal site.

Your site is now being built at `(your username).github.io`! The first time will take a few 
minutes but subsequent pushes will appear on the site after only a few seconds.

You will be redirected to an editor window where you can modify the homepage (`index.md`).
This is a Markdown file that Jekyll will render into HTML to become the homepage for your project.
Of course, it is better practice not to edit files on the web; we need to clone the
repo locally and edit the files there.

===

Clone the repo locally, either using the command below or by creating an RStudio project.
Again, if you are cloning using the command line, make sure you are in the correct directory first.

~~~bash
git clone https://github.com/{{ site.data.lesson.example.user }}/{{ site.data.lesson.example.user }}.github.io
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Cloning into '{{ site.data.lesson.example.user }}.github.io'...
~~~

===

The repo contains the bare bones of what Jekyll needs to build the site:
a YAML configuration file called `_config.yml` and a homepage called `index.md`.

The `_config.yml` file currently contains only a single line, specifying the site theme.
The leading underscore `_` of the filename tells Jekyll not to process the file as a page.

===

Let's add a title to the configuration file.
There is a [Jekyll documentation page](https://jekyllrb.com/docs/variables/) listing
the site-level variables you can include in the configuration file.

Open `_config.yml` and add a line with your site title in quotes:

~~~bash
title: "My Site"
~~~

===

Stage, commit, and push.

~~~bash
git add _config.yml
git commit -m "Add site title to config"
git push
~~~
{:.text-document title="worksheet.sh"}

===

The site will be rebuilt by Jekyll and you should see the new title shortly.

If you would like to preview the site locally rather than having to push it
live to the web to see your changes, you will need to install Jekyll
on your local machine. Describing how to do that is out of the scope of this lesson. 
Follow the [Jekyll installation instructions](https://jekyllrb.com/docs/).
{:.notes}

In Exercise 1 below, you will make a change to the homepage and push it.

===

### Creating a project page with a premade template

In addition to your personal site at `username.github.io`, you can also make pages associated with your
individual projects on GitHub.

To make one of your GitHub repos into a page, go to the **Settings** page of one of your existing repos
and scroll down to the **GitHub Pages** section as you did for your user page.

===

Select a premade Jekyll theme for your page.

This will automatically create a branch called `gh-pages` and open a code editor window for the `index.md` file. 
You can close this window without any further action needed.

After a few minutes, your site will be live at `username.github.io/reponame`!

![github pages editor window]({% include asset.html path="images/gh_pages_themeset.PNG" %})
*This window will pop up but no further action is needed.*
{:.captioned}

===

Instead of editing the Markdown online, it's better to pull the `gh-pages` branch locally, make changes, and commit and push them back up to the remote repo. 


Let's use our newfound branching skills to do that!

===

First, open the RStudio project for the repo you just added a page to. 
Go to your terminal, create a branch called `gh-pages` and switch to it.

~~~bash
git checkout -b gh-pages
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Switched to a new branch 'gh-pages'
~~~

===

Next, pull the `gh-pages` branch from the remote origin.

<!-- change this to "allow unrelated histories" once git is updated on the rstudio server!!! -->

~~~bash
git pull origin gh-pages
~~~
{:.text-document title="worksheet.sh"}

===

Because this is merging a branch with a different history, a Vim text editor
window will pop up prompting you to enter a merge commit message.

You need to confirm this message and quit Vim by typing `:q` and pressing `Enter`.

Hopefully you don't get stuck in Vim, which is [notoriously hard to exit](https://stackoverflow.com/questions/11828270/how-do-i-exit-the-vim-editor).

![exit vim memes]({% include asset.html path="images/vimmeme.png" %})
{:.captioned}

===

~~~bash
 * branch            gh-pages   -> FETCH_HEAD
Merge made by the 'recursive' strategy.
 _config.yml |  1 +
 index.md    | 37 +++++++++++++++++++++++++++++++++++++
 2 files changed, 38 insertions(+)
 create mode 100644 _config.yml
 create mode 100644 index.md
~~~

===

Now you can make changes locally, commit them, and push them. Every time you do, the project page will rebuild!

In Exercise 2 below, you will collaborate with your partner and both make changes to a project page.

