---
---

## GitHub Issues

**FIXME add some more examples/details about issues**

Issues are a useful feature of GitHub.com that can greatly improve your workflow. 
The user interface is fairly easy to figure out. 
This is just a plug to encourage everyone to make them a part of their workflow!

===

### Uses for Issues

- Pointing out a bug or feature request in someone else's repository
- Making a to-do list for yourself
- Maintaining a record of rich information about your work
- Troubleshooting problems with code by searching existing issues

![]({% include asset.html path="images/rslurm_issue_queue.PNG" %}){:width="60%" style="border: none; box-shadow: none;"}  
*Example: rslurm's issue queue contains issues created by both collaborators and users*
{:.captioned}

===

### Formatting issues

You can reference users, commits, pull requests, and other issues in the text of your issue, and they will automatically be linked.

To reference users, use the `@` sign followed by their name.

To reference commits, use the first 7 digits of the commit's hash (it will look something like `5d1001b`).

To reference pull requests and other issues, use the `#` sign followed by the number ID of the pull request or issue. They go up sequentially starting at `#1`.

![]({% include asset.html path="images/rslurm_issue_example.png" %}){:width="60%" style="border: none; box-shadow: none;"}  
*Example: comments on an issue in rslurm referencing users and a pull request*
{:.captioned}

===

### Issue labels and assignees

You can put labels on issues to tag them by topic. 

You can also assign issues to collaborators on your project, to designate who is responsible for resolving the issue.

![]({% include asset.html path="images/issue_assignees.png" %}){:width="60%" style="border: none; box-shadow: none;"}  
*Example: issues assigned to different collaborators*
{:.captioned}

===

### Closing resolved issues

Once an issue is resolved, you can close it. It will no longer appear as an outstanding issue, but all 
closed issues are still archived as part of the repo on GitHub.

===

### Troubleshooting with issues

If you run into an issue with an R package or other software, it is often helpful to go to the 
repo page for that software and search the (open and closed) issues there. This can be a more
targeted way to find a solution for your problem, compared to searching Google or StackOverflow.

===

### Learn more!

Read [GitHub's guide to issues](https://guides.github.com/features/issues/) to learn more about how
to use issues for project management.

*A final note on issues*: Issues are a feature of GitHub only, not git. So if you clone a repo from GitHub to somewhere
else such as GitLab, the issues will not automatically be copied over. You will need to 
[import](https://docs.gitlab.com/ee/user/project/import/github.html) the repo to get the history of
issues, pull requests, and comments.
{:.notes}
