---
layout: document
category: tags
published: true
title: "Author"
description: The author tag is a single tag that is used to return the name of the author of the currently displayed article.
tags:
  - Article tags
---

# Author

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:author />
~~~

The **author** tag is a *single* tag that is used to return the name of the author of the currently displayed article.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"`
: Escape HTML entities such as `<`, `>` and `&`.
: **Values:** `html` or unset.
: **Default:** `html`;

`format="boolean"`
: Display plain URL or full link.
: **Values:** `link`, `url` or unset.
: **Default:** unset (display title or full link, depending on `link`).

`link="boolean"`
: Make text a link to the author's posts.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`section="section name"`
: Restrict to articles from specified section(s).
: **Values:** (comma separated list of) section name(s).
: **Default:** unset, retrieves from all sections.

`this_section="boolean"`
: If set to `1`, the linked author name will direct users to an author list in the current section, otherwise author list from all sections is displayed.
: **Values:** `0` (no, all sections) or `1` (yes, this section only).
: **Default:** `0`.

`title="boolean"`
: Whether to display the author's real name or login name.
: **Values:** `0` (login name) or `1` (real name).
: **Default:** `1`.

## Examples

### Example 1: Link to list of author's articles

~~~ html
<h1>
    <txp:title />
</h1>
<txp:body />
<p class="author-date">
    Posted By: <txp:author link="1" /> at <txp:posted />
</p>
~~~

The author's name in this article form is a hyperlink to a list of articles by this author.

Other tags used: [posted](posted), [title](title), [body](body).

### Example 2: Author landing page

~~~ html
<txp:if_author>
    <h1>
        Articles by author: <txp:author />
    </h1>
    <txp:article form="article_listing" limit="5" />
</txp:if_author>
~~~

Display the author's name above a list of articles by that author when visiting `example.com/author/Author+Name` URLs.

Other tags used: [if_author](if_author), [article](article).

## Genealogy

### Version 4.6.0

`escape` and `format` attributes added.

### Version 4.5.0

Permitted the tag to be used on author list landing pages.

### Version 4.3.0

`title` attribute added.

### Version 4.0.4

`section` and `this_section` attributes added.
