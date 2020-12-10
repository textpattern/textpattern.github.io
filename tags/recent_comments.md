---
layout: document
category: Tags
published: true
title: Recent comments
description: Textpattern will replace this tag with a list of permanent links to recent comments.
tags:
  - Comment tags
---

# Recent comments

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:recent_comments />
~~~

The **recent_comments** tag is a *single* or a *container* tag. Textpattern will replace this tag with a list of permanent links to recent comments. This list will be displayed with the format:

bc. User's Name (Article Name)

If used as a container, the tag must be specified as an opening and closing pair, like this:

~~~ html
<txp:recent_comments>
    …contained statements…
</txp:recent_comments>
~~~

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`form="form name"`
: Use specified form template.
: **Default:** unset (if left empty, the commenter's name and article title in which the comment was made will be permlinked).

`limit="integer"`
: Number of comments to display.
: **Default:** `10`.

`offset="integer"` <span class="footnote warning">v4.0.7+</span>
: Number of comments to skip.
: **Default:** `0`.

`sort="sort value(s)"`
: How to sort the resulting comment list. Specify a value from the ones below, followed by a space and then add either `asc` or `desc` to sort in ascending or descending order, respectively.
: **Values:** \\
`discussid` (comment ID#). \\
`email`. \\
`ip` ([IP address](https://en.wikipedia.org/wiki/IP_address)). \\
`message`. \\
`name`. \\
`parentid` (article ID#). \\
`posted`. \\
`rand()` ([random](https://dev.mysql.com/doc/refman/5.7/en/mathematical-functions.html#function_rand)). \\
`web`.
: **Default:** `posted asc`.

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
: **Default:** tag name or unset (see [class cross-reference](/tags/tag-attributes-cross-reference#class)).

`label="text"`
: Label prepended to item.
: **Default:** unset (but see [label cross-reference](/tags/tag-attributes-cross-reference#label) for exceptions).

`labeltag="element"`
: HTML element to wrap (markup) label, specified without brackets (e.g. `labeltag="h3"`).
: **Default:** unset.

`wraptag="element"`
: HTML element to wrap (markup) list block, specified without brackets (e.g. `wraptag="ul"`).
: **Default:** unset (but see [wraptag cross-reference](/tags/tag-attributes-cross-reference#wraptag) for exceptions).

## Examples

### Example 1: Labelled list of recent comments

~~~ html
<txp:recent_comments label="Recent Comments" wraptag="p" break="br" />
~~~

### Example 2: Recent comments as an ordered list

~~~ html
<txp:recent_comments label="Recent Comments" wraptag="ol" break="li" limit="25" />
~~~

This example also increases the results to a maximum of 25 list items (instead of the default 10).

## Genealogy

### Version 4.7.0

`breakby` attribute added.

### Version 4.0.7

Can be used as a container tag. \\
`offset` attribute added.
