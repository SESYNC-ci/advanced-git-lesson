---
---

## Forks

![Forky](assets/images/forky.jpg)

A *fork* is not a separate operation from a clone. It is just a clone with a different remote origin. 
In plain language, this means the expectation is that you are starting your own project, distinct from
the project you forked from.

If you fork a repo, it is probably going to be one where you aren't collaborating directly with its creator. The creator may
continue to make updates, adding commits to their version's history, while you do the same. A good example would be if you are
making a GitHub Page, and you want to use a premade template. Many page templates have their own repos that you can fork and
create your own page from. The content you add to the page will make it its own project, and you would rarely to incorporate the content you added back into the original template.
{:.notes}

However, if you are working on a project that you forked from someone else's repo, and you do
want them to incorporate your changes into their version of the repo, you would make a 
*pull request*, which we will cover later in this lesson.
{:.notes}

===

### Forking a repo

To fork a repo on GitHub, just go to the repo page and click "Fork" in the upper right-hand corner.

In this example we will fork the "fun" R package, originally developed by Yihui Xie.

![fork fun repo]({% include asset.html path="images/github_fork_fun.PNG" %})
{:.captioned}

===

A few seconds later, you will have a copy of the repo in your account.

Go back to your terminal to clone the forked repo to your local machine.

~~~bash
git clone https://github.com/{{ site.data.lesson.example.user }}/fun.git
~~~
{:.text-document title="worksheet.sh"}

===

Now, when you commit and push changes to this repo, they will be pushed to the copy you
own rather than the owner's original copy. So if you are directly working with
a collaborator on the same project, you would just want to clone the repo and 
keep the same remote origin as the collaborator, not fork.
