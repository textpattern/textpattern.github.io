---
layout: document
category: Tags
published: true
title: "Prev title"
description: The prev_title tag is a single tag which Textpattern will replace with the title of the previous article in the sort order.
tags:
  - Article tags
---

# Prev title

On this page:

* [Syntax](#syntax)
* [Attributes](#attributes)
* [Examples](#examples)

## Syntax

~~~ html
<txp:prev_title />
~~~

The **prev_title** tag is a *single* tag which Textpattern will replace with the title of the previous article in the sort order.

The container tag [link_to_prev](link_to_prev) wraps the text or tag and assigns the link.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Display a link to the previous article when displaying individual articles

~~~ html
<txp:link_to_prev>
    <txp:prev_title />
</txp:link_to_prev>
~~~

Other tags used: [link_to_prev](link_to_prev).
