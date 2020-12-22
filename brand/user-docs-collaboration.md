---
layout: document
category: Brand
published: true
title: Collaboration on documentation
description: Orientation and procedures for collaboration on Textpattern user documentation.
---

#  Collaboration on documentation

These procedures are for anyone helping to develop user documentation for Textpattern. They cover the full extent of the collaboration process in relation to documentation workflow, including the protocols for using the repository Issues. People actually writing and editing user documentation will also be aware of the [guidelines for developing user documentation](/brand/user-docs-guide).

**Contents**

* Table of contents
{:toc}

## Collaboration goals

Besides the expected objective to help people learn and use the software, there is a more holistic goal for collaborators on documentation to reduce the time and effort spent answering *How?* and *Troubleshooting* questions in the Textpattern Forum.

The Forum has a history of serving many roles for the community, some more relevant than others. Waxing redundant on how to do the many various things involved with building websites with Textpattern should not be one of them when user documentation is developed for that reason.

The ideal relationship between the [Forum](https://forum.textpattern.com/) and [User Documentation](https://docs.textpattern.com/) is represented in the following scenario:

1. Someone has a question or problem and looks for a help doc that will address their enquiry. If the doc exists, is sufficiently detailed, and clearly written, it may be all anyone needs to troubleshoot and move on without needing to seek additional help in the Forum. **Most ideal**.
2. If a help doc is not found, either because it does not exist in User Documentation, or is too hard to find in the website’s structure, the person will likely post in the Forum about their problem. A perfectly normal and expected course of action.
3. A friendly veteran member of the community briefly replies to the poster’s enquiry with a link to the appropriate page in user documentation, perhaps indicating the relevant topic subsection, too. Again, the expected course of action. (Avoid adding links in the forum to document subsections. Such deep links are easily broken when user docs are edited. Point to the doc’s main URL instead and say what section to look at.)
4. If no such user doc exists, the knowledgeable community member must provide descriptive help details in the forum thread itself — a necessary response, and perhaps even enjoyed by some, but **least ideal** from a productivity standpoint.
5. The topic gap in docs, realized from the previous step, is [listed for documentation development](#identifying-potential-topics) so similar questions are not repeatedly answered in the Forum in the future.

The above scenario makes clear what **the theoretical end-game goal** is for collaborative documentation development: **to establish a Forum-Docs equilibrium at steps 1 through 3**. Steps 4 and 5 mean there is work to do; the equilibrium has not been reached.

The worst situation is having incomplete documentation that only addresses half the enquiries people have, forcing them to the Forum where others must also spend valuable time providing answers, often over and over again as threads on similar topics sink into oblivion.

Likewise, redundantly explaining the same things over and over in the Forum when a help doc already exists that provides the same information, is *not* a good use of the Forum.

## Knowing what documentation to write

You should only write documentation for which there are existing open [Issues defining documentation objectives](https://docs.textpattern.com/brand/user-docs-collaboration#documentation-repository-protocols). 

However, before editors can know what Issues to create, a prior assessment of what topics are needed must be conducted, as reflected by scenario steps 4 and 5 in the previous section.  

### Identifying potential topics

Anyone can do this.

To optimize the Docs/Forum relationship, it makes sense to observe the Forum for the kinds of questions and problems people have and post about. These topics should be listed in a running list of ideas for further consideration and prioritization by editors (those with direct write access in the repository). 

The [How?](https://forum.textpattern.com/viewforum.php?id=5) and [Troubleshooting](https://forum.textpattern.com/viewforum.php?id=67) sections of the Forum, and perhaps the [Themes discussion](https://forum.textpattern.com/viewforum.php?id=8) section to a lesser degree, are where to watch and dive into the history. Take the time to look way back into the Forum at old threads to better understand what the common enquiries have been. The more frequent a topic is asked about, the more likely it is missing in documentation, or not easily found or clearly explained. Such topics are ideal for listing and discussion about docs development.

At the same time, make note of those forum threads, and especially any posts in them, that provide solutions to the problems asked about. These links will be needed to help draft the documentation for them, so if not recorded now, they will need to be recorded later.

For lack of a more visible and convenient location, add all potential topics for documentation develop in the [Topic Suggestions for User Documentation](https://forum.textpattern.com/viewtopic.php?id=51220) thread. Forum moderators will keep the head post up to date with all contributions and any status changes to the list.

### Evaluating and prioritizing listed topics

This will largely fall into the responsibility of editors; that is, those with direct write access to the repository. It makes sense that they will write the Issues for documentation since they also will be responsible for any information architecture changes in relation.

But anyone can provide initial discussion to the decisions and actions needing made. The running topics list will enable:

* Seeing what kinds of topics are shared, which might, in turn, help with recognizing related topic ideas
* Evaluating suggestions against what may already exist in docs but not easily found/seen (thus a spotted IA problem to fix)
* Early discussion of listed topics by editors to evaluate architecture changes in relation
* Prioritizing topics for development, and therefore how exactly to start a dedicated repo Issue for the document task and data gathering

Editors will need to evaluate how best to work the topics into the organization of the file tree. Sometimes, if not often, this will mean working the help information into an existing document instead of creating a new one. It just depends on what topics surface and what information already exists.

Thereafter, new repository Issues will be created for new document pages, or existing Issues will be opened for revising existing documents, and other types of Issues may be started specifically for architectural changes.

See an [example of this workflow](#example-for-context) at the end.

## Creating effective titles

Collaborating on documentation means you will create and edit titles sooner than later, like when [creating Issues](#issues) that say what documentation is needed.

Writing good titles for documentation is not terribly hard, but does need attention. There are three types of titles to be aware of:

1. Metadata title, primarily for machines
2. `h1` title, for humans
3. URL-only titles, mostly for humans (especially editors)

The third is not really a title, but a file name based on the  document’s title to make the document’s URL unique.

The grammar rules and syntax tricks for titles and associated file-names are not exactly the same. Document titles must be grammatically correct, while file-name titles can be written however is needed, so long as they still suggest what document they concern.

Normally, metadata titles and `h1` titles can be tailored to bots and humans, respectively, meaning the former can be more key-word loaded while the latter is more concise for the sake of brevity and website usability. This separate tailoring is not recommended in Textpattern user docs, however, because the terminal end of the breadcrumb trails that appear at top of doc pages pulls from the metadata title instead of the `h1` title. If the two title locations are tailored differently, it results in a wordier breadcrumb string much out of sync with the `h1` title directly underneath it. Thus, in this website, the metadata and `h1` titles must be exactly the same to prevent an ugly discord between breadcrumbs and `h1` titles.

We thus refer to metadata titles and `h1` titles collectively as *topic titles*. 

### Topic titles

Keep topic titles grammatically correct and as concise as possible while still being clear about document scope.

With regard to being concise, avoid needless terms that only benefit search engines. We are writing for humans, not bots.

One obvious word to avoid in titles is ‘Textpattern’ (or ‘Textpattern CMS’). The brand name is never needed in human readable topic titles because the context of Textpattern is already clear by the website’s header logo and other cues. Nobody will be confused about whether or not a doc topic concerns Textpattern, thus using the brand name in the human-readable `h1` title is pointless and distracting.

Other terms not to use in titles include useless genre flags like ‘how to’, ‘tutorial’, ‘walkthrough’, ‘doc’, and so forth. These terms do nothing to convey topic and scope; rather, the bloat and confuse titles.

An exception to the above is if one of those terms is, in fact, a subject in the topic or scope, like the current document, where the subject *is* on user documentation.

Fortunately, topic titles can be changed anytime to improve the clarity and usability of them, even if already published. We don’t break links by changing topic titles. When making title changes like this, however, attempt to find and edit link text in relation, wherever it exists. Likewise, **titles must be updated on their dedicated Issues**.

### URL-only titles

Unlike topic titles, URL-only titles (document file names based off of topic titles) do not have to follow the same rules of grammar or satisfy search engines, nor do they have to mimic the diction and syntax of the `h1` titles. This means you can drop as many words as you can and mix the remaining words around so long as what is left still hints to the document topic it belongs to. The resulting shorter file names make it a *lot* easier to work with links in copy and file tree directories.

Use your best judgement for document file names, thus their URLs, but consider the following guides to help:

* Cut words that are not directly focused on the topic or scope of material (e.g. never use ‘textpattern’, ‘tutorial’, etc., for reasons explained earlier, nor any needless parts of speech like articles, conjunctions, prepositions, and so on)
* Use fewer verbs and nouns if one or two will suffice to still make it clear what document is concerned
* Use abbreviations if they are commonly used in the domain (e.g. the current doc uses ‘docs’ instead of ‘documentation’)
* Front-load subject terms when feasible (i.e. put these terms at the start of the file name)
* Use front-loading and shortening patterns strategically to group related files together alphabetically in shared directories

You could look at the file names of many existing docs in the file tree and find poorly conceived examples; either too long, having poor syntactic structure, or both. This very document, for instance, could have been named ‘docs-collaboration’, dropping *user*. But it’s never to late to do better with new documentation.

While we generally don’t want to mess with existing file names already published and indexed (and likely linked to from other documentation pages, Forum threads, and elsewhere), sometimes it is necessary to improve information architecture, especially if file names are particularly long or not clearly indicative of their document’s topic. We only do this, however, if 301 redirects can be established for the changed URLs at the same time; otherwise, we risk breaking a lot of links to the document. 

Make URL redirect requests for documents by using their dedicated repository issues (or create one if necessary) address redirect requests to @petecooper (in GitHub), Textpattern’s systems administrator. Do not push the file name changes live until Pete has a chance to coordinate the redirects at a relatively close point in time. 

## Repository protocols

Collaboration on documentation largely centres around using Issues in the website’s file-tree repository. The repository keeps the files under version control while dedicated documentation Issues provide a means for coordinating tasks among collaborators so they don’t step on each others’ toes. 

### Issues

[Issues](https://github.com/textpattern/textpattern.github.io/issues) are a feature of most versioning repositories, though we use them differently for documentation development than how they are typically used for software code.

In our case, every page in the documentation tree has its own dedicated Issue (or will, eventually, as we progress), a 1:1 relationship. That means when an issue is addressed and closed for any given task, it is not closed permanently. Should the page ever need revisions in the future, the dedicated issue will be reopened and updated to reflect what new changes are needed and who is assigned to do them.

### Creating issues

For purposes here, issues are created for one of two reasons only:

* An existing doc page needs a revision and no dedicated issue exists for it yet to detail the problem.
* A new doc page is needed.

When creating new Issues, one is faced with three [template options](https://github.com/textpattern/textpattern.github.io/issues/new/choose) to choose from. Two are relevant to the above, and one (regarding author prefixes) should be ignored.

Before setting out to use an issue template, do a search in both [open issues](https://github.com/textpattern/textpattern.github.io/issues) and [closed issues](https://github.com/textpattern/textpattern.github.io/issues?q=is%3Aissue+is%3Aclosed) for either the page you are interested in, by its title (in the case of existing pages), or any open issue that might exist having similar subject terms (in the case of new pages). In the latter case, it’s not impossible, though unlikely under these collaboration procedures, that someone else started an issue on a similar topic but by a different title; you should see what might surface just in case and proceed to communicate with them about the best way forward.

#### Issue template generalities

Each template provides some pre-filled data and instructions to help get it started.

Title fields of each template will be pre-filled with title prefixes. Leave the prefixes in place and add doc titles after them.

The body fields of each template (effectively the head post of the issue once created) will indicate where and what type of information should be added to the issue.

In both cases, the issue body should begin with the full URLs for the expected/existing backend and front-end document locations. Neither URL will actually work until a draft document has been pushed to the repository (backend), and later published (front-end), but it’s convenient to add the URLs at this point so it’s done. These URLs are handy later for quickly finding and accessing the document should any collaborator need or want to from context of the issue. If you ever change document file names (for any issue), update these URLs in relation so the links work correctly, as well anywhere else in documentation (at least) that linked to the files.

One important difference to be aware of is that file names for tag pages — specifically for a Textpattern tag in the [Tags Reference](/tags/) — are constructed using underscores (like_this), not hyphens. All other pages in user documentation use hyphens (like-this). 

After the URLs should be *brief* commentary on what the point of the issue is. The info requested depends on which issue template is used. See next sections for template specifics.

Finally, you’ll be given sections for listing helpful resources and making checkbox to-dos, if  warranted, to guide the task of the open issue, especially for new documents needing developed.

#### Issue template: New page

Use this template if no documentation page exists for the topic needing developed. By using this template, you begin the process of creating a dedicated issue for a new documentation page.

The title prefix should be `proposed:` until the topic idea is approved for development by at least one other editor familiar with Textpattern documentation (has history), at which time the prefix should be changed to `page:`.

The explanation section should make clear what the topic scope  is, and, if possible, how it helps to fill a gap in docs that address questions/problems often raised in the Forum. (The idea being to better leverage the Forum and User Documentation sites.)

The resources section should be used to list all resources, Forum and otherwise, that would help an author draft the document. Add more bulleted list items as needed.

The final to-dos section is a checkbox list to be used later. It’s often useful after a draft is read to list to-dos that then need fixed.

#### Issue template: Existing page

Only use this template for existing doc pages **that do not already have a dedicated Issue**. So be sure to search in open and closed issues for such an issue first.

The title for this issue always has the prefix `page:` with the document’s title after it.

The explanation section should make clear what the immediate task needs to be (presumably some kind of editing, but not solely), and provide any other info that will help guide the task. This explanation should be revised or appended to each time the Issue is opened for new tasks.

The resources listing can be used, if warranted, or deleted to keep the head post concise. Ditto with the final to-dos section.

*Nota*, this template is relevant until all existing docs have dedicated issues. Once achieved, if ever, this template will be removed from the repository and the ’New page’ template described previously will be the only one used. (This collaboration doc will need revised in relation.)

#### Other issues

You may happen to notice other kinds of issues created in the documentation repository that don’t reflect the above situations. Issues not easily identified by titles having `page:` or `proposed:` prefixes will undoubtedly concern systems-related tasks, or other tasks dealing with platform architecture. If you ever need to start a new issue for such concerns, you can use a [blank issue](https://github.com/textpattern/textpattern.github.io/issues/new) and fill it in as you think best.  

### Assignees and labels for docs issues

When creating a new Issue or editing one that already exists, you can assign who is responsible for the issue and add the appropriate task and status Labels. 

(You will also see a Projects and Milestone option for assignment but we do not use these for documentation, so ignore them.)

#### Assignees

Assignees on a given issue at any given moment will be those who are responsible for the current status of the document in question.

Generally, people will assign issues to themselves if they intend to be responsible for the immediate task needing done. Or, if they know the task is appropriately suited do a different collaborator, they may assign that collaborator instead.

There is only one assignee at a time for documentation Issues, and they will remove themselves when appropriate and add a new assignee as the systematic change of tasks happen (e.g. moving from drafting to editing, or to technical reviewing, or whatever).

There should be no assignee on an Issue if nobody can take immediate responsibility of the current task on it. This makes it clear that anyone can self-assign the issue if/when it becomes possible.

You should *never* remove anyone from an issue except yourself. If someone else is assigned an issue, leave it alone and don’t work on that document. This ensures nobody will work on the same thing, which can lose work and cause conflicts in the repository.

Only remove yourself from an issue when you have completed the task you were assigned, or you did not start the work you signed up for. As long as you are working on an Issue, you must remain assigned to it so other collaborations know not to interfere. When your immediate task is finished, then remove yourself and change the status of the issue accordingly.  

#### Labels

In the previous section there was a lot of mention of *status* and *tasks*. The terms merely reflect what [Labels](https://github.com/textpattern/textpattern.github.io/labels) may be applied to an issue. Labels are necessary to help communicate an issue’s status and what tasks the assignee is working on in relation.

Labels do not do all the communicating, though, it is just as important for assignees to keep the head post of an issue up-to-date with changes, too. This may include updating titles, URLs, task explanations, resource links, or whatever it takes to keep collaborators aware of an open issue’s status.

Ensuring labels on an issue are current is largely the responsibility of the last person working on the issue. As assignees come and go on issues, they are responsible for make sure to change the labels accordingly.

The Labels we use are fairly self explanatory, and their descriptions help clarify their purposes, too. The next sections go over a few as they concern editorial workflow.

### Collaborative editorial workflow

The Assignees and Labels will expectedly change on Issues as a document proceeds through the phases of editorial development:

1. proposing
2. researching
3. drafting
4. technical reviewing
5. editing
6. publishing (i.e. made live on docs website)

This isn’t a well-oiled machine and nobody is especially diligent about the workflow, but we try to fall into line for the sake of courtesy and not stepping on toes.

#### Proposing

This follows having created a new issue for a proposed topic.

No one can yet assign themselves to the task.

Nothing can be done on the issue until at least one of the collaborating docs maintainers and/or seasoned editors (@Bloke, @Petecooper, @Philwareham, @wion in the repository) approves the issue as proposed for development or points out that the proposal needs adjustments or clarifications first. The latter could be to better clarify scope, change the title, decide where in the architecture it should really go, or whatever the case may be. Whichever the case, the second editor quickly makes clear what the status is by adding either the **APPROVED** or **NEEDS DISCUSSION** label to the issue.

If the proposal is approved, anyone can take the task of researching and drafting the doc.

If the proposal needs discussion and more thinking, the second editor must explain in the comments of the issue what the problems are and an additional **ON HOLD** label is added to the issue.

If a proposal is decided (after discussion) to be non-workable; that is, the document will not be developed for any reason, the issue is slapped with a **DECLINED** label only and closed.

#### Researching and drafting

The person who volunteers to draft a new doc (of revise an existing doc) will naturally research the topic in order to know what to write and how best to organize concepts on the page. Thus, the assignee on a document for these two steps is *generally* the same person and only the labels may change as they transition from **researching** to **drafting** to keep collaborators abreast of progress, or both labels can be applied at the same time.

#### Technical reviewing

Depending on the topic and scope of a document being drafted, it may need a different pair of eyes to do the technical review, namely a core developer, though anyone with the sufficient knowledge of the functionality in question. This may happen during the draft process as a kind of back and forth, while keeping running commentary in the associated issue, or it can happen after the author is done with the first draft.

If the author requests technical assistance while drafting, the reviewer’s name is added along with the authors as Assignees, and that is enough since the doc is still being drafted and the **drafting** label suffices in that case.

However, if the author finishes the draft and then requests the technical review, the **drafting** label is removed and the **technical review needed** label is added. The author should also un-assign themselves and wait for a reviewer to self-assign the issue, or add the name of a reviewer if one is already worked out and willing to be assigned.

*Nota*: When people have been associated to an Issue, they will be notified through GitHub when they are assigned or de-assigned from it later. This is useful for staying abreast of workflow on a document.

#### Editing

No document should be published until a second person (wearing the editor hat) reviews the work of the draft author.

If the drafting author did not need a technical review for technical information, they will nevertheless need to pass the document to another editor for a copyediting review.

In this case the same process applies but with different labels. When the author is done drafting, they remove the **drafting** label, add the **editing needed** label, and un-assign themselves while they wait. Or, if they know who the editor will be, they can assign that person.

On the editor’s side, one may self-assign after seeing the **editing needed** status, but either way, an editor will change the label to **editing** to show they are busy doing that.

#### Publishing

Again, depending on a document, the Issue may be passed back to  the original author, or need more technical review, if not by the same editor, and the labels will change to reflect these handovers and status changes.

The last step will be initiated by the author who feels their revised draft is ready for the big time. They then remove their   own **drafting** label and replace it with the **review for closing** label. This signals their partner editor, who is assigned again, to look at whatever last particulars were changed, and if all looks good, including metadata, titles, and so on, the editor replaces the label with an **APPROVED** label, and the author can then push the document live. 

When the document is live and no further tweaks are needed, the author Issue for that document is cleared of all assignees and labels, then closed.

#### Revisioning workflow

The workflow process is not only for new docs, of course, but for revising/editing existing docs, too. In these situations the workflow can be reduced depending on the extent of the changes needed. For example, maybe some typos are discovered, or just a paragraph needs revised. Such revisions do not require more than one editor making the changes and pushing them live.

On the other hand, should an existing doc ever need to go through extensive developmental editing again, or incorporate new descriptions of software functionality, it may need both a technical review by a developer and a final copy-edit sweep, thus a change of assignees and labels accordingly.

#### Editorial tips and reminders

* Don’t work on more than one document at a time. If you are assigned to a task, finish the task before taking on another one for a different issue.
* Consider the big picture [linking strategy](/brand/user-docs-guide#linking-strategy) for documentation as a whole.
* Double check your link changes before pushing changes live; both links across document pages and in-page anchor links. All links within the documentation website should be relative URLs:
   * across-pages: `[other page](/directory/file-name)`
   * in-page: `[subsection](#subsection-heading)`.
* If you change titles (not file names), update the dedicated Issue title too, and try to find and update other files that might be using the old titles as link text. (Potentially a hard task.)
* Do not change file names (even if you changed titles), unless you also coordinate with @petecooper to establish 301 redirects to the new file names.

## Document draft

The fun finally begins. A topic idea was surfaced, an issue for it was created and approved, and now it is time to _write_.

Use the [new document page template](/brand/user-docs-page-template) to quickly get the draft started. Everything you need to know is explained in the template.

Two or more people can feasibly work on a draft (e.g. different sections), though not at the same time to avoid repository conflicts (a versioning term). Authors collaborating on drafts can work out their own strategy by using existing issue labels and issue comments.  

*Nota*, in the metadata of all doc pages is a line called `published:`. This takes one of two values: `false` (not live in the docs website) or `true` (live). As documents are drafted, use `false`. This enables you to start a draft (even if not completed) and commit it to the repository without it appearing in the docs website. The value is only changed to `true` when the doc is ready for public use and approved for such by editorial review. Once becoming live (`true`) the value must stay that way unless the document is slated for permanent removal, at which point some kind of server status is established by @petecooper to instruct search engine bots.

## Wrap-up example for context

An example might help bring it all together.

We begin with having understood what the [goal and objectives](user-docs-collaboration#big-picture-goal-and-primary-objective) are, as described at the start.

 A collaborator then heads to one of two places:

* the [running list of topics](https://forum.textpattern.com/viewtopic.php?id=51220) being kicked around by all who wish to help with documentation (including you)
* the [open Issues](https://github.com/textpattern/textpattern.github.io/issues) list for any proposed docs that are approved for development but not yet assigned to anyone.

In the latter case, you can self-assign to any available issue and get started. Any approved but unclaimed proposals will still have an **APPROVED** label on them, and perhaps a **writer needed** label, too. Assign yourself to such an issue, change the labels, accordingly, and get started.

We continue this example with the first situation above.

In that topics discussion linked above, an attentive community member offers a corker that garners a few *here, heres*: [develop an explanatory doc on building a blog](https://forum.textpattern.com/viewtopic.php?pid=327293#p327293).

A contributing editor then realizes [how that doc can be approached and structured](https://forum.textpattern.com/viewtopic.php?pid=327310#p327310) for fit in the overall architecture.

Another editor gives the idea a [nod of approval](https://forum.textpattern.com/viewtopic.php?pid=327313#p327313), thus the way is clear to get an issue started that proposes that document.

(*Nota*, not all doc topics are as easily realized and quickly scoped for an Issue as this one was. But the process — from idea, to discussion, to issue — is more or less the same for any new topic idea, regardless of how long the process might take.)

Since the first editor scoped the doc topic, they fairly take responsibility to start [the dedicated issue](https://github.com/textpattern/textpattern.github.io/issues/184). They did this by opening the [New page issue template](#issue-template-new-page) in the docs repository and filling in the necessary data. The original doc title proposed was:

```
proposed: Build a custom blog
```

And the supporting details provided were:

```
#### URLs
        
- Front: https://docs.textpattern.com/build/custom-blog
- Back: https://github.com/textpattern/textpattern.github.io/blob/master/build/custom-blog

#### Explanation

A doc for learning to build a custom blog by unpacking and understanding the default Textpattern theme, addressing other ‘how to’ type questions people often have, and provide opportunities to segue into using themes and link to that documentation.

#### Resources list

(a list of resources to to help write the first draft, TBD)
```

Nothing more could be done [until the doc is approved, if at all](#proposing), and that is where the proposal stands at time of writing this.

Once a proposal is approved, [editorial workflow](#collaborative-editorial-workflow) begins with the person creating the new issue deciding either to take responsibility for [starting the document draft](#document-draft), at least a section or two, else leave the issue unassigned so anyone else can have the pleasure. [Assignees](#assignees) and [Labels](#labels) changes will be needed at every stage.

The process finishes by publishing the new doc, and the collaborative work repeats with a new topic or issue.

  

     
    

 
