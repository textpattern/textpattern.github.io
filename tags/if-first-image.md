---
layout: document
category: tags
published: true
title: "If first image"
tags:
  - Conditional tags
  - Image tags
  - Structural tags
---

# If first image

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:if_first_image>
```

The *if_first_image* tag is a _conditional_ tag and always used as an opening and closing pair, like this...

```html
<txp:if_first_image>
    ...conditional statement...
</txp:if_first_image>
```

The tag will execute the contained statements if the displayed image is the first in the currently displayed "images":images list. The tag supports "else":else.

h3(#sec2). Attributes

This tag has no attributes.

## Examples

### Example 1: Identify first image in an image list

[todo:pw]

Other tags used:

## Genealogy

### Version 4.6.0

Tag support added.
