---
layout: document
category: tags
published: true
title: "If last link"
tags:
  - Conditional tags
  - Link tags
  - Structural tags
---

# If last link

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:if_last_link>
```

The *if_last_link* tag is a _conditional_ tag and always used as an opening and closing pair, like this...

```html
<txp:if_last_link>
    ...conditional statement...
</txp:if_last_link>
```

The tag will execute the contained statements if the displayed link is the last in the currently displayed "linklist":linklist. The tag supports "else":else.

h3(#sec2). Attributes

This tag has no attributes.

## Examples

### Example 1: Identify last link in an link list

[todo:pw]

Other tags used:

## Genealogy

### Version 4.6.0

Tag support added.
