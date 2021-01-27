---
layout: document
category: Tags
published: true
title: Section
description: The section tag can be used as either a single tag or container tag and will display information about the section.
tags:
  - Navigation tags
  - Structural tags
---

# Section

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:section />
~~~

The **section** tag can be used as either a *single* tag or *container* tag. It will display information about the section as defined by either the `name` attribute, the section currently being viewed, or the section of the article being displayed (if used within 'article' type [Form templates](/themes/form-templates-explained), or an [if_individual_article](/tags/if_individual_article) conditional tag).

When used as a containing tag, it will turn the contents into a link to that section. Otherwise, it will return plain text.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`link="boolean"` (works only in the *single* tag)
: Display as plain text or a link.
: **Values:** `0` (plain text) or `1` (link).
: **Default:** `0`.

`name="section name"`
: Display the named section.
: **Default:** unset (display the current section).

`title="boolean"`
: Display either the section name or its title.
: **Values:** `0` (name) or `1` (title).
: **Default:** `0`.

`url="boolean"` <span class="footnote warning">v4.0.7+</span>
: Display plain URL or full link.
: **Values:** `0` or `1`.
: **Default:** `0` (display title or full link, depending on `link`).

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value. If no wraptag is supplied (and `link="1"`), the class is applied to the anchor instead.
: **Default:** unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`wraptag="element"`
: HTML element to wrap (markup) list block, specified without brackets (e.g. `wraptag="ul"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Display the current section name

~~~ html
<txp:section />
~~~

### Example 2: Display hyperlinked section title

~~~ html
<txp:section link="1" title="1" />
~~~

In an article form, it displays the article's section title as a hyperlink to the section home page. Otherwise, it displays the title of the section currently being viewed as a hyperlink to the section home page.

### Example 3: Display a link to a specified section

~~~ html
<txp:section link="1" title="1" wraptag="p" name="archive" />
~~~

Displays a hyperlink to the 'archive' section home page, wrapped in `<p>` tags, using the section's title as link text.

### Example 4: Container tag example

~~~ html
<txp:section name="archive">
    My Archive
</txp:section>
~~~

Displays the text 'My Archive' as a hyperlink to the 'archive' section home page. HTML output for clean URLs:

~~~ html
<a href="https://example.com/archive/">My Archive</a>
~~~

And for messy URLs:

~~~ html
<a href="https://example.com/index.php?s=archive">My Archive</a>
~~~

### Example 5: Single tag example

~~~ html
<a href="<txp:section name="about" url="1" />">
    <txp:section name="about" title="1" />
</a>
~~~

Displays the section title 'About' as a hyperlink to the 'about' section home page. HTML output for clean URLs:

~~~ html
<a href="https://example.com/about/">About</a>
~~~

And for messy URLs:

~~~ html
<a href="https://example.com/index.php?s=about">About</a>
~~~

## Genealogy

### Version 4.0.7

Applies `class` attribute to the `<a>` element when `wraptag` is empty. \\
`url` attribute added.
