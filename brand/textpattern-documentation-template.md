---
layout: document
category: Brand
published: true
title: Textpattern documentation template
description: A quick-start template for quickly structuring a new page in user documentation.
---

# Textpattern documentation template

This page provides a quick-start markup template for new documentation pages, and description of the various elements. 

For more insights about template authoring and editing, see the  [documentation guidelines](https://docs.textpattern.com/brand/textpattern-documentation-guidelines).

## Template markup

To use the template:

1) Create a new Markdown page (having file extension, *.md*).

2) Save it in the appropriate directory location using one of these file-name patterns, as required:

* If it’s a page for a new Textpattern tag, use this underscore pattern: *file_name_for_page.md*.
* For all other pages in the documentation website, use this hyphenated pattern: *file-name-for-page.md*.

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

**On this page:**

* [First section header](#first-section-header)
** [Subsection 1 header](#subsection-1-header)
** [Subsection 2 header](#subsection-2-header)
** [Etc](#etc)
* [Second section header](#second-section-header)
* [Third section header](#third-section-header)
* [Etc](#etc)

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

## Notes
```

 
## Template explanation

A quick breakdown of the markup elements.

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

The `published` value will either be `true` (meaning appearing live in the documentation site) or `false` (not yet appearing in the documentation site). The latter is good when you’ve commited a draft file but have not yet finished the draft.

The `title` value will be the same as what you use in the `h1` header of the page.

The `description` value should be a short description of the page’s topic and/or scope.

As example, the metadata block for the [documentation guidelines](https://docs.textpattern.com/brand/textpattern-documentation-guidelines) page:

```
---
layout: document
category: brand
published: true
title: Textpattern documentation guidelines
description: Guidelines for contributions to Textpattern CMS user documentation.
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

The contents list begins with a consistent lead line

```
**On this page:**
```

The lead line is followed by the contents list itself. For the time being, the list must be manually created.

A contents list item is a Markdown link that corresponds with a given section header in your document. The headers must be unique in all cases. Link paths must begin with an octothorpe (`#`), followed by the header text, all lower-case and hyphenated.

Customize the default list markup as needed.

Avoid using `h4`-`h6` header levels, if possible, and especially anything after `h4`. Deep structuring means documentation is becoming too complex on the page.

### Section headers

Because the page title is the only first-level header in the document, the first-level items in the contents list will equal second-level headers; second-level list items will equal third-level headers, and so on.

For example, this first-level list item in the contents:

```
* [First section header](#first-section-header)
```

Equals the first second-level header in your document:

```
## First section header
```

And so on.

Every section of your page, regardless of header-level, must be followed by at least one paragraph of normal text. Do not add two headers in a row; it’s weak information design.

Also, do not use a deeper heading level if you only need one such level under a higher heading. Figure out a different way to write the text. Only use lower-heading levels when you have two or more instances of them under a given parent heading. 

### Notes

At the very bottom of the template is a heading for notes:

```
## Notes
```

Delete this line if you don’t use any endnotes in your documentation. 

But if you _do_ use notes (see [Notes in main text](https://docs.textpattern.com/brand/textpattern-documentation-guidelines#notes-in-main-text) in the documentation guidelines), then leave this section header and the notes will appear under it automatically as endnotes.

## Other content elements

For the most part, using Markdown for various content elements like lists, blockquotes, code snippets, and inline formatting works just fine.

Whenever Markdown can’t be used for adding a given content element, such elements will be described in the documentation guidelines. One example right now is tables, which must be added as regular HTML, and contained inside a special `div` wrapper. See [Tables (HTML only)](https://docs.textpattern.com/brand/textpattern-documentation-guidelines#tables-html-only).

When in doubt about structuring a page or using a given content element, look at the structure for a page already in the folder you’re expecting to add to.