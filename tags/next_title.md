---
layout: document
category: Tags
published: true
title: Next title
description: The next_title tag is a single tag which Textpattern will replace with the title of the next article in the sort order.
tags:
  - Article tags
---

# Next title

**On this page**:

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:next_title />
~~~

The **next_title** tag is a *single* tag which Textpattern will replace with the title of the next article in the sort order.

The container tag [link_to_next](/tags/link_to_next) wraps the text or tag and assigns the link.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Link to next article by its title

~~~ html
<txp:link_to_next>
    <txp:next_title />
</txp:link_to_next>
~~~

Other tags used: [link_to_next](/tags/link_to_next).
