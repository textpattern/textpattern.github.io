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

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:next_title />
~~~

The **next_title** tag is a *single* tag which Textpattern will replace with the title of the next article in the sort order.

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

## Examples

### Example 1: Link to next article by its title

~~~ html
<a href="<txp:link_to_next />">
    <txp:next_title />
</a>
~~~

Other tags used: [link_to_next](/tags/link_to_next).
