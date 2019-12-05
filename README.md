# Textpattern user documentation repository

This repository drives the [Textpattern user documentation](https://docs.textpattern.com) website. Contributions are welcome and encouraged!

## How to proceed

As follows:

1. Review the [documentation collaboration procedures](https://docs.textpattern.com/brand/user-docs-procedures). The who, what, when, where, (you know why), and how of it all. (If you get a 404, the initial draft is not finished. Skip to next item and please come back later.)
2. Review the [user documentation guidelines](https://docs.textpattern.com/brand/user-docs-guide). These provide near everything you need to know for writing and editing documentation, specifically.
3. Review the [editorial style guide](https://docs.textpattern.com/brand/editorial-style-guide). This is Textpattern’s baseline editorial guidelines across all project sites and written material. Here will be high-level rules about orthographical style, spelling, punctuation, brand name usage, and so on. (If you get a 404, the document is still under major revision. Skip to next item and please come back later.)
4. Continue according to skill level or interest…
   * If drafting new pages (and/or editing existing pages): Clone this repository (we assume you know how). If aiming to draft something new, ensure you have already [proposed the page](https://github.com/textpattern/textpattern.github.io/issues/new?assignees=&labels=&template=propose-new-page.md&title=proposed%3A+) and got consensus. And use the [documentation page template](https://docs.textpattern.com/brand/user-docs-page-template) to start easier.
   * If editing existing pages only: Clone repository or use GitHub’s web interface, explained in next section.

Whether you clone the repository or use the web interface to make changes, a pull request will be initiated and reviewed by repository owners.

## Editing via GitHub’s web interface

If you want to help *edit existing pages*, and have a GitHub account but would rather not fork or clone around, you can work directly via GitHub’s web interface.

Proceed as follows:

1. See steps 1 through 3 in the list above.
2. Inform collaborators of what you think needs done via an issue, in this way:
   1. Search [all issues](https://github.com/textpattern/textpattern.github.io/issues?utf8=%E2%9C%93&q=is%3Aissue+is%3Aall) (both open and closed) to see if an issue already exists for the page you’re concerned about (subject pattern is `page: {title of page}`). If it does exist, use that issue to discuss the objective, re-opening it if necessary.
   2. If no issue already exists for the page, open a new issue using the [Propose new page](https://github.com/textpattern/textpattern.github.io/issues/new?assignees=&labels=&template=propose-new-page.md&title=proposed%3A+) template. This will be the dedicated issue for the page going forward.
3. When clear how to best make revisions, via issue discussion, go to the page in the documentation tree, likely organized in one of the following subdirectories: [*administration*](https://github.com/textpattern/textpattern.github.io/tree/master/administration), [*development*](https://github.com/textpattern/textpattern.github.io/tree/master/development), [*faqs*](https://github.com/textpattern/textpattern.github.io/tree/master/faqs), [*tags*](https://github.com/textpattern/textpattern.github.io/tree/master/tags), or [*themes*](https://github.com/textpattern/textpattern.github.io/tree/master/themes). (The [*brand*](https://github.com/textpattern/textpattern.github.io/tree/master/brand) directory is for editors only.)
4. Click the pencil icon at top-right of the document (the hover text will read, ‘Edit this file’). You’ll then be in document edit mode.
5. Make your revisions. Ensure you’re following conventions for [strings formatting](https://docs.textpattern.com/brand/user-docs-guide#formatting-interface-strings) and [marking up pre-defined content](https://docs.textpattern.com/brand/user-docs-guide#markup-and-styling) elements.
6. Hit the **Commit changes** button when finished. This will initiate a pull request. The request will be reviewed (and likely merged) by a repository owner.
7. Check your changes in the front-end of the document to ensure any formatting or styles used were applied correctly.