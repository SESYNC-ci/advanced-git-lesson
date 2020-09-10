---
---

## Forks

![forky]({% include asset.html path="images/forky.jpeg" %}){:width="30%" style="border: none; box-shadow: none;"}  
{:.captioned}

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

In this example we will fork the [fun](){:.rlib} R package, originally developed by Yihui Xie. 
Go to <https://github.com/yihui/fun> and fork the repo into your account.

![fork fun repo]({% include asset.html path="images/github_fork_fun.PNG" %})
{:.captioned}

===

A few seconds later, you will have a copy of the repo in your account.

Go back to your terminal to clone the forked repo to the home directory on your local machine.
(Make sure you `cd` back to the directory where you want to clone the repo before cloning.)

~~~bash
git clone https://github.com/{{ site.data.lesson.example.user }}/fun.git
~~~
{:.text-document title="worksheet.sh"}

~~~bash
Cloning into 'fun'...
~~~

If you are using RStudio, an alternative to the command above is to
simultaneously clone the repo and create an RStudio project by going to 
`File > New Project > Version Control` and entering the repo URL. This will seamlessly
integrate the version control with RStudio's project structure.
{:.notes}

===

Now, when you commit and push changes to this repo, they will be pushed to the copy you
own rather than the owner's original copy. So if you are directly working with
a collaborator on the same project, you would just want to clone (not fork) the repo and 
keep the same remote origin as the collaborator.
