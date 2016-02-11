---
layout: document
category: tags
published: true
title: "Image display"
tags:
  - Image tags
---

# Image display

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)

## Syntax

```html
<txp:image_display />
```

The **image_display** tag is a __single__ tag that is intended to be used in tandem with "image_index":image-index.

The **image_display** tag displays an image specified by the page URL which in turn is built by its tandem tag "image_index":image-index. To use this tag successfully, it has to be placed either inside an article which shares a common category with the images to display (thereby linking article and image categories), or in a location at the page template which is displayed without any special article context.

If this tag seems to display no image at all, it probably resides inside an article which is never rendered as it does not belong to the currently active category.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Display a single image as chosen by image_index

```html
<txp:image_display />
```

See the "image_index":image-index tag documentation for details on how to populate this tag with content.
