---
layout: document
category: Tags reference
published: true
title: Meta author
description: The meta_author tag is a single tag, used in the head of an individual article page template.
tags:
  - Article tags
  - Markup tags
---

# Meta author

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:meta_author />
~~~

The **meta_author** tag is a *single* tag, used in the head of an individual article page template. Textpattern will replace this tag with an HTML meta tag as follows:

~~~ html
<meta name="author" content="Article author's name" />
~~~

## Attributes

Tag will accept the following attributes (**case-sensitive**) as well as the {% include atts-global-link.html %}:

`escape="html"` <span class="footnote warning">v4.6.0+</span>
: Escape [HTML entities](https://developer.mozilla.org/en-US/docs/Glossary/Entity) such as `<`, `>` and `&`.
: **Values:** See the [tag escaping](/tags/learning/#tag-escaping) documentation for all possible values.
: **Default:** `html`.

`format="value"` <span class="footnote warning">v4.6.0+</span>
: Display as `<meta>` tag or as raw value.
: **Values:** `meta` or unset.
: **Default:** `meta` (display as a `<meta>` tag).

`title="boolean"` <span class="footnote warning">v4.3.0+</span>
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
