---
layout: document
category: tags
published: true
title: "Comments error"
Description: The comments_error tag is used to produce the current comments error.
tags:
  - Comment tags
---

# Comments error

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

~~~ html
<txp:comments_error />
~~~

The **comments_error** tag is a __single__ tag which is used to produce the current comments error.

## Attributes

Tag will accept the following attributes (**case-sensitive**):

### Common presentational attributes

These attributes, which affect presentation, are shared by many tags. Note that default values can vary among tags.

* `break="value"`
Where value is an HTML element, specified without brackets (e.g. `break="li"`) or some string to separate list items.
Default: `br` (but see @@break cross-reference@@ for exceptions).
* `class="class name"`
HTML `class` to apply to the `wraptag` attribute value.
Default: `comments_error` (see @@class cross-reference@@).
* `wraptag="element"`
HTML element to wrap (markup) list block, specified without brackets (e.g. `wraptag="ul"`).
Default: unset (but see @@wraptag cross-reference@@ for exceptions).

## Examples

### Example 1: Display comments error when an error exists

~~~ html
<txp:if_comments_error>
    <txp:comments_error break="li" wraptag="ul" />
</txp:if_comments_error>
~~~

Other tags used: [if_comments_error](if-comments-error).
