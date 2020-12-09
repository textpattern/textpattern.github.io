---
layout: document
category: Brand
published: true
title: Textpattern documentation template
description: A quick-start template for quickly structuring a new page in user documentation.
---

# Textpattern documentation template

This page provides a quick-start template for new documentation pages. Be sure to review the [documentation collaboration procedures](/brand/user-docs-procedures) and the [user documentation guidelines](/brand/user-docs-guide) before creating any new pages.

**On this page**:

* Contents
{:toc}

## Using the template

To use the template:

1) Create a new Markdown page having file extension, *.md*.

2) Save it in the appropriate directory location using one of the following file-name patterns, respectively:

* If a tag page in the Tag Reference, use underscores: *file_name_for_page.md*.
* For all other pages in user docs, use hyphens: *file-name-for-page.md*.

3) Copy the following block of code (the minimum template markup) and paste it in your new blank page. Adjust to your needs.

The template elements are described after the block.

```
---
layout: document
category:
published:
title:
description:
---

# Title of page

A single paragraph to overview the page's subject goes here. It can be multiple sentences, of course.

**On this page**:

* Table of contents
{:toc}

## First section header

Normal text.

### Subsection 1 header

Normal text.

### Subsection 2 header

Normal text.

## Second section header

Normal text.

## Third section header

Normal text.

## Etc
```


## Explanation

Elaboration on each template element.

### Metadata

At top of the template markup is the necessary metadata lines. If these lines are not included, plus the needed values you must add, the page will not publish correctly:

```
---
layout: document
category:
published:
title:
description:
---
```

The `layout:` value will always be `document`. Make sure this line is present, but otherwise ignore it.

The `category` value will be the folder name in which the file will go (e.g. `tags`).

The `published` value will either be `true` (meaning appearing live in the documentation site) or `false` (not yet appearing in the documentation site). The latter is good when you’ve committed a draft file but have not yet finished the draft.

The `title` value will be the same as what you use in the `h1` header of the page.

The `description` value should be a short description of the page’s topic and/or scope.

As example, the metadata block for the user documentation guidelines:

```
---
layout: document
category: brand
published: true
title: Development guidelines for Textpattern documentation
description: Guidelines for the development of Textpattern user documentation.
---
```

### Title of page

Immediately under the metadata comes the title of the page, which is a first-level (`h1`) header added as Markdown (`#`):

```
# Title of page
```

The title added here should equal the `title:` value in the metadata block.

### Overview paragraph

When feasible, follow the title with a concise introductory paragraph that overviews the page’s subject matter. This should _not_ be equal to the metadata’s `description` value.

Every tag page has an overview paragraph, as example, which uses a fairly consistent structure. Other documentation pages may require unique overviews.

### Contents

The contents list (aka table of contents) comes under any overview paragraph, or directly under the title if no overview.

The contents list begins with a consistent lead line, followed by the Kramdown syntax for outputting a customized content list

```
**On this page:**

* Contents
{:toc}
```

The contents list will display the page’s structure by automatically generating a ToC out of the existing `h2` through `h4` headings only.

The `h1` heading is not displayed because that’s already the title of the page.

The `h5` and `h6` headings are not displayed because: 1) You should try to avoid using that deep of structure, if possible, for page usability reasons. 2) Even if you do use those headings in documentation, we don’t want an overly complex contents list. We rely on the `h4` headings to get readers closer to any deeper sections in context.  

### Section headers

Because the page title is the only first-level header (`h1`) in the document, the first-level items in the contents list will equal second-level headers (`h2`); second-level list items will equal third-level headers (`h3`), and third-level list items will equal fourth-level headers (`h4`).

Do not leave two headers in series without any normal text between them; it’s weak information design. Every section in your page, regardless of header-level, must be followed by at least one paragraph of normal text (remember: a paragraph means at least one sentence, and a sentence means at least one word).

Also, make sure you use at least two headings at a given level, or not at all. Using a single child heading is also sloppy information design. Figure out a different way to write the text without the heading if you don’t need more than one heading under a parent.

## Other content elements

For all other content types you may need, and are appropriate for use, see [Markup](/brand/user-docs-guide#tables) in the user documentation guidelines.

When in doubt about structuring a page or using a given content element, re-open the page’s [existing issue](https://github.com/textpattern/textpattern.github.io/issues?utf8=%E2%9C%93&q=is%3Aissue+is%3Aclosed), or start a new issue if one doesn’t already exist, using the [Discuss existing page](https://github.com/textpattern/textpattern.github.io/issues/new?assignees=&labels=&template=discuss-existing-page.md&title=page%3A+) issue template.

See the [documentation collaboration procedures](/brand/user-docs-collaboration-procedures) for more on that process.
