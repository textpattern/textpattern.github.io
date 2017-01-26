---
layout: document
category: Tags
published: true
title: Meta author
description: The meta_author tag is a single tag, used in the head of an individual article page template.
tags:
  - Article tags
  - Markup tags
---

# Meta author

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)
* [Genealogy](#genealogy)

## Syntax

~~~ html
<txp:meta_author />
~~~

The **meta_author** tag is a *single* tag, used in the head of an individual article page template. Textpattern will replace this tag with an HTML meta tag as follows:

~~~ html
<meta name="author" content="Article author's name" />
~~~

## Attributes

Tag will accept the following attributes (**case-sensitive**):

`escape="html"`
: Escape HTML entities such as `<`, `>` and `&`.
: **Values:** `html` or unset.
: **Default:** `html`.

`format="boolean"`
: Display as `<meta>` tag or as raw value.
: **Values:** `meta` or unset.
: **Default:** `meta` (display as a `<meta>` tag).

`title="boolean"`
: Whether to display the author's login name or real name.
: **Values:** `0` (login name) or `1` (real name).
: **Default:** `0`.

## Examples

### Example 1: Use article author for meta tag content

Tag in the head of an individual article page (article's author name is 'Biff Tannen'):

~~~ html
<txp:meta_author />
~~~

This results in the following:

~~~ html
<meta name="author" content="Biff Tannen" />
~~~

## Genealogy

### Version 4.6.0

`escape` and `format` attributes added.

### Version 4.3.0

`title` attribute added.
