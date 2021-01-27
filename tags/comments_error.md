---
layout: document
category: Tags
published: true
title: Comments error
description: The comments_error tag is used to produce the current comments error.
tags:
  - Comment tags
---

# Comments error

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:comments_error />
~~~

The **comments_error** tag is a *single* tag which is used to produce the current comments error.

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

`break="value"`
: Where value is an HTML element, specified without brackets (e.g. `break="li"`) or some string to separate list items.
: **Default:** `br` (but see [break cross-reference](/tags/tag-attributes-cross-reference#break) for exceptions).

`breakby="integer"` <span class="footnote warning">v4.7.0+</span>
: Used to group list items when separating by `break`. Possible values are lists of integers, like `2` (groups of 2 items) or `1,2` (alternate groups of 1 and 2 items).
: **Default:** `1` (actually unset).

`class="class name"`
: HTML `class` to apply to the `wraptag` attribute value.
: **Default:** `comments_error` (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`wraptag="element"`
: HTML element to wrap (markup) list block, specified without brackets (e.g. `wraptag="ul"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Display comments error when an error exists

~~~ html
<txp:if_comments_error>
    <txp:comments_error break="li" wraptag="ul" />
</txp:if_comments_error>
~~~

Other tags used: [if_comments_error](/tags/if_comments_error).

## Genealogy

### Version 4.7.0

`breakby` attribute added.
