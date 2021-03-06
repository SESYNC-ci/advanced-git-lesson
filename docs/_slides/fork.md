---
---

## Forks

![forky]({% include asset.html path="images/forky.jpeg" %}){:width="30%" style="border: none; box-shadow: none;"}  
{:.captioned}

===

To *fork* a repo is to copy a repo from someone else's account into your account so that you can start your own project
based on the existing repo, without having to push changes to the original owner's repo. In git jargon, a fork is just a "clone with a different remote origin."

If you fork a repo, it is probably going to be one where you aren't collaborating directly with its creator. The creator may
continue to make updates, adding commits to their version's history, while you do the same. A good example would be if you are
making a GitHub Page, and you want to use a premade template. You would fork the page template repo and add your own content;
you would likely never push changes to the template itself.
{:.notes}

However, if you are working on a project that you forked from someone else's repo, and you do
want them to incorporate your changes into their version of the repo, you would make a 
*pull request*, which we will cover later in this lesson.
{:.notes}

===

### Forking a repo

To fork a repo on GitHub, just go to the repo page and click "Fork" in the upper right-hand corner.

![fork fun repo]({% include asset.html path="images/github_fork_fun.PNG" %}){:width="50%" style="border: none; box-shadow: none;"}  
{:.captioned}

===

In this example we will fork the [fun](){:.rlib} R package, originally developed by Yihui Xie. 
Go to <https://github.com/yihui/fun> and fork the repo into your account.

===

A few seconds later, you will have a copy of the repo in your account.
Go back to your terminal to clone the forked repo to the home directory on your local machine.

As before, make sure you are in your home directory before running this.
{:.notes}

~~~bash
git clone https://github.com/{{ site.data.lesson.example.user }}/fun.git
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Cloning into 'fun'...
~~~

===

As before, an alternative to running the command above is to create a new project in 
RStudio, select "Version Control," and enter the URL of the forked repo.

Now, when you commit and push changes to this repo, they will be pushed to the copy you
own rather than the owner's original copy. You probably do *not* want this behavior
if you are directly working with a collaborator on the same project.
In that case, you would just want to clone (not fork) the repo and 
keep the same remote origin as the collaborator.
{:.notes}
