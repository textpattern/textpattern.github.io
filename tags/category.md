---
layout: document
category: Tags
published: true
title: Category
description: The category tag will display information of the category as defined by the name attribute, or the one currently being viewed.
tags:
  - Navigation tags
  - Structural tags
---

# Category

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:category />
~~~

The **category** tag can be used as either a *single* or *containing* tag. It will display information of the category as defined by the `name` attribute, or the one currently being viewed. When used as a containing tag, it will turn the contents into a link to the category. Otherwise, it will return plain text.

May be used in any context.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`link="boolean"`
: Whether to display as link. Works only in the *single* tag, **not** in the *containing* tag variant.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0`.

`name="category name"`
: Display specific category. Note the category name is specified in lowercase regardless of how you typed its title in the Categories panel. Also note that if you had called your category `My Category Name` it becomes `my-category-name` when used in tags.
: **Default:** unset (use current category).

`section="section name"`
: Restrict to articles from specified section(s).
: **Values:** (comma separated list of) section name(s).
: **Default:** current section (for backwards compatibility).

`this_section="boolean"` <span class="footnote warning">v4.0.4+</span>
: If set to `1`, the linked category name will direct users to an category list in the current section, otherwise category list from all sections is displayed.
: Only link to articles from the current section. The `section` attribute overrides this setting.
: **Values:** `0` (no, all sections) or `1` (yes, this section only).
: **Default:** `0`.

`title="boolean"`
: Whether to display category's title instead of its name.
: **Values:** `0` (no, display name) or `1` (yes, display title).
: **Default:** `0`.

`type="category type"`
: **Values:** `article`, `image`, `link` or `file`.
: **Default:** `article`.

`url="boolean"` <span class="footnote warning">v4.0.7+</span>
: Display plain URL or full link.
: **Values:** `0` (no) or `1` (yes).
: **Default:** `0` (display title or full link, depending on `link`).

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`class="class name"`
: HTML `class` attribute, applied to `wraptag`. If no `wraptag` is supplied (and `link="1"`), the `class` is applied to the `<a>` tag instead.
: **Default:** unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`wraptag="tag"`
: HTML tag to wrap around output, specified without brackets (e.g. `wraptag="p"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Display the current category name

~~~ html
<txp:category />
~~~

### Example 2: Display hyperlinked category title

~~~ html
<txp:category title="1" link="1" />
~~~

### Example 3: Display a specific category's title, hyperlinked

~~~ html
<txp:category name="article" title="1" link="1" wraptag="p" />
~~~

### Example 4: Container example

~~~ html
<txp:category name="book">My books</txp:category>
~~~

## Genealogy

### Version 4.0.7

Applies `class` attribute to the `<a>` tag when the `wraptag` attribute is empty. \\
`url` attribute added.

### Version 4.0.4

`this_section` attribute added.
