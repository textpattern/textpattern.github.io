---
layout: document
category: Tags
published: true
title: Prev title
description: The prev_title tag is a single tag which Textpattern will replace with the title of the previous article in the sort order.
tags:
  - Article tags
---

# Prev title

**Contents**

* Table of contents
{:toc}

## Syntax

~~~ html
<txp:prev_title />
~~~

The **prev_title** tag is a *single* tag which Textpattern will replace with the title of the previous article in the sort order.

## Attributes

This tag has no attributes of its own. It accepts only the {% include atts-global-link.html %}.

## Examples

### Example 1: Display a link to the previous article when displaying individual articles

~~~ html
<a href="<txp:link_to_prev />">
    <txp:prev_title />
</a>
~~~

Other tags used: [link_to_prev](/tags/link_to_prev).
