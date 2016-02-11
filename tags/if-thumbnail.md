---
layout: document
category: tags
published: true
title: "If thumbnail"
tags:
  - Conditional tags
  - Image tags
---

# If thumbnail

On this page:

* [Syntax](#user-content-syntax)
* [Attributes](#user-content-attributes)
* [Examples](#user-content-examples)
* [Genealogy](#user-content-genealogy)

## Syntax

```html
<txp:if_thumbnail>
```

The **if_thumbnail** tag is a __conditional__ tag and always used as an opening and closing pair, like this...

```html
<txp:if_thumbnail>
    ...conditional statement...
</txp:if_thumbnail>
```

The tag will execute the contained statements **if** the current image (from an [images](images) tag) has a thumbnail assigned to it. Must always be used in an image context.

## Attributes

This tag has no attributes.

## Examples

### Example 1: Only show a thumbnail if one exists

```html
<txp:images author="neo" wraptag="figure" class="author-gallery">
    <txp:if_thumbnail>
        <txp:thumbnail />
        <txp:image_info wraptag="figcaption" />
    <txp:else />
        <p>No thumbnail</p>
    </txp:if_thumbnail>
</txp:images>
```

For each image uploaded by author 'neo', display its thumbnail if it has one, or the text 'No thumbnail' if it doesn't. Add a caption beneath the thumbnail using "image_info":image-info.

Other tags used: [images](images), [else](else), "image_info":image-info, "thumbnail":thumbnail.

## Genealogy

### Version 4.3.0

Tag support added.
