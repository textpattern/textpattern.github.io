---
layout: document
category: Brand
published: true
title: Textpattern user documentation collaboration procedures
description: A quick-start template for quickly structuring a new page in user documentation.
---

# Textpattern user documentation collaboration procedures

These procedures are for anyone helping to develop user documentation for Textpattern. They cover the full extent of the collaboration process in relation documentation workflow, including the protocols for using the repository Issues. People actually writing and editing user documentation will also be aware of the [user documentation guidelines](/brand/user-docs-guide) for creating documentation pages, and organizing and structuring content.

**On this page**:

* Table of contents
{:toc}

## Big picture goal and primary objective

Besides the expected objective to help people learn and use the software, there is a related and more wholistic goal for Textpattern project collaborators: **to reduce the time and effort spent answering *How?* and *Troubleshooting* questions in the Textpattern Forum**.

The Forum has a history of serving many roles for the community, some more relevant than others. Waxing redundant on how to do something with core Textpattern functionality should not be one of them when user documentation was painstakingly developed on volunteer time for that reason.

The ideal relationship between the [Forum](https://forum.textpattern.com/) and [User Documentation](https://docs.textpattern.com/) is represented by the following scenario:

1. Someone has a question or problem and looks for a help doc that will address their enquiry. If the doc exists, is sufficiently detailed, and clearly written, it may be all anyone needs to troubleshoot and move on without needing to seek additional help in the Forum.
2. If a help doc is not found, either because it does not exist in User Documentation, or is too hard to find in the website’s structure, the person will likely post in the Forum about their problem. A perfectly normal and expected course of action.
3. A friendly veteran member of the community briefly replies to the poster’s enquiry with a link to the appropriate page in user documentation. Again, the expected course of action.
4. If no such user doc exists, the knowledgeable community member must provide descriptive help details in the forum thread itself — a necessary response, but not ideal.

It should be clear from the above scenario what the goal of User Documentation is and how Docs and Forum websites should work in relation with one another as far as the Textpattern project’s help system goes. User Documentation should be thoroughly developed and easy to browse so that when anyone looks there for help, they find what they need without having to post in the Forum. **Self-sufficiency is the ideal situation**.

Anything after that should be addressed by the least necessary effort required, as numbers 2 and 3 above imply.

The worst situation is having incomplete documentation that only addresses half the enquiries people have, forcing them to the Forum where others must also spend valuable time providing answers, often over and over again as threads on similar topics sink into oblivion.

Likewise, redundantly explaining the same things over and over in the Forum when a help doc already exists that provides the same information, is *not* a good use of the Forum, and a waste of everyone’s time.

The objective for collaborators, then, is **to make documentation as complete, relevant, and usable as possible**.

Achieving the objective requires a systematic process of community collaboration, described in the rest of this document.

## Knowing what documentation to write

The best way to know what additional documentation needs written, and how to adjust information architecture in relation, is to monitor what problems and questions have been asked in the Forum and develop new documentation (or revise existing documentation) around those issues. By doing this we cater to actual user needs based on evidence, and support the goal of leveraging the Forum and User Documentation platforms, as described previously.

### Identifying potential topics

Anyone can do this.

To optimize the Docs/Forum relationship, it makes sense to observe the Forum for the kinds of questions and problems people routinely post there about. These topics can be long-listed for further consideration and prioritization, accordingly. 

The [How?](https://forum.textpattern.com/viewforum.php?id=5) and [Troubleshooting](https://forum.textpattern.com/viewforum.php?id=67) sections of the Forum, and perhaps the [Themes discussion](https://forum.textpattern.com/viewforum.php?id=8) section to a lesser degree, are where to watch and dig into for relevant topics, particularly topics that have been asked about multiple times.

Take the time to look way back into the forum at old threads to better understand what the common enquiries have been. The greater frequency of enquiry signifies important subject areas that are not well explained, if at all, in documentation. Such topics are ideal for listing and further consideration.

At the same time, make note of those threads, and especially any posts in them that provide solutions to the problems asked about. These links will be needed, so if not found and recorded now, they will need to be researched (if again) later.

For lack of a more visible and convenient location, add all potential topics for documentation develop in the [Topic Suggestions for User Documentation](https://forum.textpattern.com/viewtopic.php?id=51220) thread. Moderators will keep the head post up to date with all contributions and any status changes to the list. Additional insights are provided at the top of that thread.

### Evaluating and prioritizing listed topics

This will largely fall into the responsibility of editors and managers of the documentation repository, but anyone can provide initial discussion to the decisions and actions needing made.

The potential topics list will be a running list over time. If few people contribute ideas, the list will be small. If more of the community makes suggestions, the list may get long until more documentation is written and the list is eventually reduced.

The running topics list will enable:

* seeing what kinds of topics are shared, which might, in turn, help with recognizing related topic ideas
* evaluating suggestions against what may already exist in docs but not easily found/seen (thus a spotted IA problem to fix)
* early discussion of listed topics by editors to evaluate architecture changes in relation
* prioritizing topics for development, and therefor how exactly to start a dedicated repo Issue for the document task and data gathering.

Editors will need to evaluate how best to work the topics into the organization of the file tree. Sometimes, if not often, this will mean working the help information into an existing document instead of creating a new one. It just depends on what topics surface and what information already exists.

Thereafter, new repository Issues will be created for new document pages, or existing Issues will be opened for revising existing documents, and other types of Issues may be started specifically for architectural changes.

## Documentation Repository Protocols

Editors and others granted direct working access in the documentation repository will be responsible for creating and editing Issues.

### Using Issues

[Issues](https://github.com/textpattern/textpattern.github.io/issues) are a feature of most versioning repositories, though they are typically used differently for code than how we use them for managing the workflow of documentation development.

In our case, every page in the documentation tree has its own dedicated Issue, a 1:1 relationship. When an issue is addressed and closed for any given task, it does not mean it is closed permanently. Should the page ever need revisions in the future, the dedicated issue will be reopened and updated to reflect what new changes are needed, who is assigned to do them, and what new Labels should guide the writing/editing to be done.

### New Issues

When creating new Issues, one is faced with three [template options](https://github.com/textpattern/textpattern.github.io/issues/new/choose) to choose from. Only two are relevant to documentation collaboration (ignore the third):

* **Discuss existing page**, which should be used when raising concerns or problems with an existing doc page.
* **Propose new page**, which should be used when suggesting a new page should be added to the docs.

Templates are opened by clicking their green ‘Get Started’ button. Each template will provide brief instruction in templates fields about how to initially fill in the information.

Their names above clearly indicate their purpose, but there is a little more to understand.

#### ‘Discuss existing page’ template

Use this template when a doc page exists that does not already have a dedicated Issue. So before even looking at templates, you should do a search in both [open issues](https://github.com/textpattern/textpattern.github.io/issues) and [closed issues](https://github.com/textpattern/textpattern.github.io/issues?q=is%3Aissue+is%3Aclosed) for the page you are interested in. If such an Issue exists, open and use it for the reason you have; do not create a new one for the same page. If no Issue exists, then you would start one using this template.

The title field for *existing* pages should always begin with the prefix `page:`, followed by the title of the doc as it appears in the User Documentation website. This makes it easy to quickly scan and see all issues dedicated to specific documentation *pages*.

Within the body of the Issue should always be the absolute URL (linked) of the doc page so it can be found and referred to easily.

There should also be a brief explanation of the problem or current task. This explanation should be revised each time the Issue is opened.

Any other information may be added (or corrected) that helps serve the immediate task of why the Issue is open. Only add what is necessary and helpful, and be as brief as you can. 

#### ‘Propose new page’ template

Use this template if no doc page exists for the topic you have in mind (i.e. a topic from the topic list described earlier that has been green-lighted for development). You do not have to search Issues in this case because there will not be an Issue until you create it.

The title should always be prefixed with `proposed:`, followed by the proposed title of the page. The prefix is only temporary through the initial drafting, review, and approval of the document, at which point the prefix should be changed to `page:` and the issue becomes a dedicated issue.

In the body of the issue, first should be the expected full URL using the proposed document title (always hyphenated)

Then should be a *brief* explanation of the proposal so it’s clear to everyone what the background for the proposed doc is.

Finally, all associated forum posts (and any other resources) that support the development of the document should be listed using the following checkbox notation: 

```
- [ ] link
- [ ] link
- [ ] link
- [ ] link
etc
```

### Issue Assignees and labels

When creating a new Issue or editing one that already exists, you can assign who is responsible for the issue (Assignees) and add the appropriate Labels that make clear the issue’s status. 

(You will also see a Projects and Milestone option for assignment but we do not use these for documentation, so ignore them.)

#### Assignees

Assignees on a given issue at any given moment will be those who are responsible for the current status of the document in question.

Generally, people will assign issues to themselves if they intend to be responsible for the immediate task needing done. Or, if they know the task is appropriately suited do a different collaborator, they may assign that collaborator instead.

Also, generally, there is only one assignee at a time, and they will remove themselves when appropriate and add a new assignee as the systematic change of tasks happen (e.g. moving from drafting to editing to technical reviewing, or whatever).

There should be no assignee on an Issue if nobody can take immediate responsibility of the expected task. This makes it clear that anyone can self-assign the issue if/when it becomes possible for them.

You should *never* un-assign anyone from an issue except yourself. If someone else is assigned an issue, leave it alone and don’t work on that task. This ensures nobody will work on the same thing and possibly cause conflicts in the repository.

Only un-assign yourself from an issue when you have completed the task you were assigned, or you did not start it to begin with and do not intend to. As long as you are working on an Issue, you must remain assigned to it until your immediate task is finished and you change the status of the issue.  

#### Labels

In the previous section there was a lot of mention of *status* and *tasks*. The terms merely reflect what the Label assignments are on an issue, which in turn make clear what is being done at any given moment for that issue and why.

[Labels](https://github.com/textpattern/textpattern.github.io/labels) are necessary to help communicate an issue’s status and what tasks the assignee is working on in relation. Labels do not do all the communicating, though, sometimes it’s critical to make clear what’s going on by updating the head post of the issue and adding running comments or questions in the thread. Whatever it takes to keep collaborators aware of an open issue’s status.

It is *important* that any labels on issues correctly indicate the status of the issue. Ensuring this is largely the responsibility of the last person working on the issue, or the person who first created it. So, as assignees come and go on issues, they are responsible for make sure to change the labels accordingly.

The Labels we use are fairly self explanatory, so we won’t wax redundant here. It’s easy to get the hang of them and all collaborators can help keep an issue current with the correct labels, whether or not they are assignees on the issue in question. But do your expected duty to keep status labels current.

## Editorial workflow

(forthcoming)